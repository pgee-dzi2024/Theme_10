from django.urls import path
from .views import *

urlpatterns = [
    path('', index, name="index"),
    path('login', login, name='login'),
    path('auth', auth_view, name='auth'),
    path('logout', logout_view, name='logout'),
    path('register', register, name='register'),
    path('registration', registration, name='registration'),
    path('add_vehicle', add_vehicle, name='add_vehicle'),
    path('manage_vehicles', manage_vehicles, name='manage_vehicles'),
    path('order_list', order_list, name='order_list'),
    path('complete', complete, name='complete'),
    path('history', history, name='history'),
    path('delete', delete, name='delete'),
]
