from django.contrib.auth import login, authenticate
from django.shortcuts import render, redirect
from django.contrib.auth import logout
from .forms import SignUpForm
from django.http import HttpResponse, HttpResponseRedirect


# Create your views here.

def logout_view(request):
    logout(request)
    return HttpResponseRedirect('/user_details/login')


def signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            user = form.save()
            user.refresh_from_db()  # load the profile instance created by the signal
            user.profile.first_name = form.cleaned_data.get('first_name')
            user.profile.last_name = form.cleaned_data.get('last_name')
            user.profile.mid_name = form.cleaned_data.get('mid_name')
            user.profile.email = form.cleaned_data.get('email')
            user.profile.gender = form.cleaned_data.get('gender')
            user.profile.location = form.cleaned_data.get('location')
            user.profile.birth_date = form.cleaned_data.get('birth_date')
            user.save()
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=user.username, password=raw_password)
            login(request, user)
            return redirect('dashboard')
    else:
        if request.user.is_authenticated:
            return render(request, 'dashboard.html')
        else:
            form = SignUpForm()
            return render(request, 'signup.html', {'form': form})
