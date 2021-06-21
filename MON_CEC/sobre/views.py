from django.shortcuts import render
from django.http import HttpResponse
from .models import Sobre



def about(request):
    about = Sobre.objects.all()
    return render(request, 'about.html', {'about':about})
