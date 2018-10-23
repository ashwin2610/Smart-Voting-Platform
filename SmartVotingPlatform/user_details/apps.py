from django.apps import AppConfig


class UserDetailsConfig(AppConfig):
    name = 'user_details'

    def ready(self):
        import user_details.user_details_signals
