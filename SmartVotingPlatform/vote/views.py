from django.shortcuts import render, HttpResponseRedirect
from django.db import transaction

from user_details.models import Candidate, Party, PartyPolicies, Voter
# Create your views here.


def redirect(request):
    return party(request)

def party(request):
    party_list = Party.objects.all()

    first_half = []
    second_half = []

    for i in range(len(party_list)):
        if i < (len(party_list)+0.5)/2:
            first_half.append({'name' : party_list[i].name, 'policy': PartyPolicies.objects.get(party_name__exact=party_list[i].name).policies, 'head': Candidate.objects.get(id__exact=party_list[i].party_head_id).first_name + ' ' + Candidate.objects.get(id__exact=party_list[i].party_head_id).last_name})
        else:
            second_half.append({'name' : party_list[i].name, 'policy' : PartyPolicies.objects.get(party_name__exact=party_list[i].name).policies, 'head': Candidate.objects.get(id__exact=party_list[i].party_head_id).first_name + ' ' + Candidate.objects.get(id__exact=party_list[i].party_head_id).last_name})

    party_list = {'first':first_half, 'second':second_half}

    return render(request, 'parties.html', party_list)



def candidate(request):
    if request.user.is_authenticated:
        id = request.user.id

    # user_vote = .objects.get(username=username)
    user = Voter.objects.get(id=id)


    if request.method == 'POST':
        cand_id = request.POST.get('id')

        cand = Candidate.objects.get(id=cand_id)
        cand.num_of_votes = cand.num_of_votes + 1
        with transaction.atomic():
            cand.save()

        if user.voted != 1:
            with transaction.atomic():
                cand.save()
            user.voted = 1
            user.save()

            return HttpResponseRedirect('success/')

        else:
            return HttpResponseRedirect('failure/')

    else:
        candidate_list = Candidate.objects.filter(election_id__exact=1)

        first_half = []
        second_half = []

        for i in range(len(candidate_list)):
            if i < (len(candidate_list))/2:
                first_half.append({'cid' : candidate_list[i].id, 'name' : candidate_list[i].first_name + ' ' + candidate_list[i].last_name, 'party' : candidate_list[i].party_name, 'position' : candidate_list[i].position})
            else:
                second_half.append({'cid' : candidate_list[i].id, 'name' : candidate_list[i].first_name + ' ' + candidate_list[i].last_name, 'party' : candidate_list[i].party_name, 'position' : candidate_list[i].position})

        candidate_list = {'first':first_half, 'second':second_half}


    return render(request, 'candidates.html', candidate_list)
