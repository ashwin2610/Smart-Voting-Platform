from django.dispatch import receiver
from django.db.models.signals import post_save
from .models import *

@receiver(post_save, sender=User)
def update_user_profile(sender, instance, created, **kwargs):
    if created:
    	profile = Voter(username=instance)
    	profile.save()
