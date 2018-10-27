from django.contrib import admin
from .models import Election, Voter, Candidate, Party, PartyPolicies
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User
# Register your models here.

class ProfileInline(admin.StackedInline):
    model = Voter
    can_delete = False
    verbose_name_plural = 'Voter'
    fk_name = 'username'

class CustomUserAdmin(UserAdmin):
    inlines = (ProfileInline, )

    def get_inline_instances(self, request, obj=None):
        if not obj:
            return list()
        return super(CustomUserAdmin, self).get_inline_instances(request, obj)


admin.site.unregister(User)
admin.site.register(User, CustomUserAdmin)
admin.site.register(Election)
admin.site.register(Voter)
admin.site.register(Candidate)
admin.site.register(Party)
admin.site.register(PartyPolicies)


