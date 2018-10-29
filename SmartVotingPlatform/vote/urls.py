from . import views
from django.urls import path, include
from django.views.generic import TemplateView
from django.contrib.auth import views as auth_views

urlpatterns = [
	path('', views.redirect, name='vote'),
	path('parties/', views.party, name='parties'),
	path('candidates/', views.candidate, name='candidates'),
	path('success/', TemplateView.as_view(template_name="vote_success.html"), name='success'),
	path('failure/', TemplateView.as_view(template_name="vote_fail.html"), name='failure'),
]
