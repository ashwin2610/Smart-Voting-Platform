from django.contrib import admin
from . import views
from django.urls import path, include

urlpatterns = [
    path('',views.SimulationView, name='simulation'),
    path('start/', views.SimulationStartView, name='sim_start')
]