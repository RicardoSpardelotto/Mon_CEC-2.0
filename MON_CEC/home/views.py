from django.http.response import HttpResponse
from django.shortcuts import render
from .models import Dado

def home(request):
    home = Dado.objects.all()
    return render(request, 'home.html', {'home':home})
