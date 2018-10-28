from . import views
from django.urls import path, include
from django.contrib.auth import views as auth_views

urlpatterns = [
	path('', views.redirect, name='vote'),
	path('parties/', views.party, name='parties'),
	path('candidates/', views.candidate, name='candidates')
]
