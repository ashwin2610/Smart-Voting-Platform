from django.contrib import admin
from .models import Party, PartyPolicies

# Register your models here.
admin.site.register(Party)
admin.site.register(PartyPolicies)