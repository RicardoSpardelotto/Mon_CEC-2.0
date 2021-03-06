from django import urls
from django.contrib import admin
from django.urls import path, include   
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', include('home.urls')),
    path('', include('noticias.urls')),
    path('', include('usuario.urls')),
    path('', include('sobre.urls')),
    path('admin/', admin.site.urls),
    path('accounts/',include('accounts.urls')),
    path('accounts/',include('django.contrib.auth.urls')),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
 