from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

GENDER_CHOICES = (
        ('M', 'Male'),
        ('F', 'Female'),
    )

class SignUpForm(UserCreationForm):

    def __init__(self, *args, **kwargs):
        super(SignUpForm, self).__init__(*args, **kwargs)
        for visible in self.visible_fields():
            visible.field.widget.attrs['class'] = 'form-control'
    
    first_name = forms.CharField(max_length=30, required=True, help_text='Required')
    last_name = forms.CharField(max_length=30, required=True, help_text='Required')
    mid_name = forms.CharField(max_length=20, required = False, help_text='Optional')
    email = forms.EmailField(required = True, help_text='Required')
    gender = forms.CharField(max_length=1, widget = forms.Select(choices=GENDER_CHOICES), required=True, help_text='Required')
    location = forms.CharField(max_length=30, required=True, help_text='Required')
    birth_date = forms.DateField(help_text='Required. Format: YYYY-MM-DD')

    class Meta:
        model = User
        fields = ('username', 'first_name', 'mid_name', 'last_name', 'email', 'gender', 'location', 'birth_date', 'password1', 'password2')