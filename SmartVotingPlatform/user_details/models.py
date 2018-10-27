from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver
from datetime import datetime  

class Candidate(models.Model):
    id = models.AutoField(primary_key=True)
    position = models.CharField(max_length=20)
    first_name = models.CharField(max_length=20)
    mid_name = models.CharField(max_length=20, blank=True, null=True)
    last_name = models.CharField(max_length=20)
    num_of_votes = models.IntegerField(blank=True, null=True)
    location = models.CharField(max_length=50)
    election = models.ForeignKey('Election', models.DO_NOTHING, blank=True, null=True)
    party_name = models.ForeignKey('Party', models.DO_NOTHING, db_column='party_name', blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'candidate'


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

class Election(models.Model):
    id = models.AutoField(primary_key=True)
    result = models.CharField(max_length=50)
    start_date = models.DateField()
    end_date = models.DateField()

    class Meta:
        managed = True
        db_table = 'election'


class Voter(models.Model):
    id = models.AutoField(primary_key=True)
    first_name = models.CharField(max_length=50)
    mid_name = models.CharField(max_length=20, blank=True, null=True)
    last_name = models.CharField(max_length=50)
    email = models.EmailField(default = 'test@example.com')
    birth_date = models.DateField(default = datetime.now)
    voted = models.IntegerField(null=True)
    gender = models.CharField(max_length=1)
    username = models.OneToOneField(User, models.DO_NOTHING, db_column='username', related_name='profile')
    location = models.CharField(max_length=30)
    election = models.ForeignKey(Election, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'voter'

