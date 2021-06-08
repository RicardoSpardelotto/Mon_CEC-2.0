from django.shortcuts import render
from django.http import HttpResponse
from .models import Noticia

def home(request):
    return render (request, 'index.html')

def noticias(request):
    noticias = Noticia.objects.all()
    return render(request, 'index.html', {'noticias':noticias})

