from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver
from datetime import datetime
from user_details.models import Candidate    


# Create your models here.
class Party(models.Model):
    name = models.CharField(primary_key=True, max_length=30)
    location = models.CharField(max_length=50)
    num_members = models.IntegerField()
    party_head = models.ForeignKey(Candidate, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'party'


class PartyPolicies(models.Model):
    policies = models.CharField(max_length=100)
    party_name = models.OneToOneField(Party, models.DO_NOTHING, db_column='party_name', primary_key=True)

    class Meta:
        managed = True
        db_table = 'party_policies'