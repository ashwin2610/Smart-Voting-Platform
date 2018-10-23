from django.contrib.auth import logout
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render

def home_page_view(request):

	if not request.user.is_authenticated:
		return HttpResponseRedirect('/user_details/login')

	else:
		return render(request, 'home.html')