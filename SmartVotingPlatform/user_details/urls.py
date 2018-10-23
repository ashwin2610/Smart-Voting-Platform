from . import views
from django.urls import path, include
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('login/', auth_views.LoginView.as_view(redirect_authenticated_user=True), name = 'login'),
    path('logout/', views.logout_view, name = 'logout'),
	path('signup/', views.signup, name='signup'),
]
