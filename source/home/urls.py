
from django.conf.urls import *
from ..home.views import *
from ..car_dealer_portal import *
from ..customer_portal import *
from django.urls import path, include


urlpatterns = [
    path(r'^$', home_page),
]

