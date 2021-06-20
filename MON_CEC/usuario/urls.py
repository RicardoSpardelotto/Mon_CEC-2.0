from django.urls import path
from . import views

urlpatterns = [
    path('login', views.login),
    path('register', views.register),
    path('cadastro', views.cadastro),
    path('yourname/<str:name>',views.yourName, name='your-name')
]