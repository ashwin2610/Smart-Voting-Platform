from django.shortcuts import render, redirect

# Create your views here.


def redirect(request):
    return party(request)

def party(request):
    return render(request, 'parties.html')

def candidate(request):
    return render(request, 'candidates.html')
