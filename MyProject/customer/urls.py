from django.urls import path
from .views import *

urlpatterns = [
    path('', index, name='index_c'),
    path('index', index, name='index'),
    path('login', login, name='login_c'),
    path('auth', auth_view, name='auth_c'),
    path('logout', logout_view, name='logout_c'),
    path('register', register, name='register_c'),
    path('registration', registration, name='registration_c'),
    path('search', search, name='search_c'),
    path('search_results', search_results, name='search_results_c'),
    path('rent', rent_vehicle, name='rent_c'),
    path('confirmed', confirm, name='confirmed_c'),
    path('manage', manage, name='manage_c'),
    path('update', update_order, name='update_c'),
    path('delete', delete_order, name='delete_c'),
]
