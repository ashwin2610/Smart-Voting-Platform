from django.shortcuts import render
from threading import Thread
import threading
from user_details.models import Candidate
from django.db.models import Q
from django.db import transaction
import datetime
import random



class GetVoteThread(Thread):
    def __init__(self, cand_id):
        super(GetUrlThread, self).__init__()
        self.cand_id = cand_id

    def run(self):
        with transaction.atomic():
        	candidate = Candidate.objects.select_for_update().get(id=cand_id)
        	candidate.num_of_votes = candidate.num_of_votes + 1
        	candidate.save() 


# Create your views here.
def SimulationView(request):
	if request.method == 'GET':
		today = datetime.datetime.today()
		cand_ids = Candidate.objects.filter(Q(election__start_date__lte=today) | Q(election__end_date__gte=today)).values_list('id', flat=True)[0]
		end_time = time.time() + 60
		threads = []
		while time.time() < end_time:
			cand_id = cand_ids[random.randint(0,len(cand_ids))]
			t = GetVoteThread(cand_id)
			threads.append(t)
			t.start()
		for t in threads:
			t.join()

		return redirect('simulation/')

	else:
		return redirect('simulation/')