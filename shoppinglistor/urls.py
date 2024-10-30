from django.contrib import admin
from django.urls import path, include
from . import settings


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('listor.urls')),
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)