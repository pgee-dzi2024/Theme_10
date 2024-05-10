from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('customer/', include('customer.urls')),
    path('dealer/', include('dealer.urls')),
    path('', include('main.urls')),
]
