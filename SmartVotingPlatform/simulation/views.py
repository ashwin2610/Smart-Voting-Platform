from django.shortcuts import render
from threading import Thread
import threading
from user_details.models import Candidate
from django.db import connection
from django import db
from django.db.models import Q
from django.db import transaction
import datetime
import random
import time
from django.http import JsonResponse
from background_task import background
import subprocess





class GetVoteThread(Thread):
    def __init__(self):
        super(GetVoteThread, self).__init__()

    def run(self):
        for _ in range(100):
            today = datetime.date.today()
            cand_ids = Candidate.objects.filter(Q(election__start_date__lte=today) | Q(election__end_date__gte=today)).values_list('id', flat=True)
            cand_id = cand_ids[random.randint(0,len(cand_ids)-1)]
            candidate = Candidate.objects.get(id=cand_id)
            candidate.num_of_votes = candidate.num_of_votes + 1
            with transaction.atomic():
                candidate.save()
        # connection.close()


# Create your views here.

@background(schedule = 1)
def background_votes():
        # db.connections.close_all()
        print('Voting started')
        threads = []
        for _ in range(20):
            t = GetVoteThread()
            threads.append(t)
            t.setDaemon(True)
            t.start()
        for t in threads:
            t.join()
        db.connections.close_all()
        print('Voting ended')

def SimulationView(request):
    return render(request, 'simulation.html')

def SimulationStartView(request):
    if request.method == 'GET':
        print('Voting about to start')
        background_votes()
        p = subprocess.Popen(["python3", "manage.py", "process_tasks"])
        print('Voting process going on')
        return render(request, 'simulation_start.html')

    elif request.method == 'POST':
        today = datetime.date.today()
        cand_ids = Candidate.objects.filter(Q(election__start_date__lte=today) | Q(election__end_date__gte=today)).values_list('id', flat=True)
        data = {
            'first_name' : list(Candidate.objects.filter(id__in=cand_ids).values_list('first_name')),
            'votes' : list(Candidate.objects.filter(id__in=cand_ids).values_list('num_of_votes'))
        }
        return JsonResponse(data)