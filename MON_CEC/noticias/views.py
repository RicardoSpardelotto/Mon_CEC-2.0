from django.shortcuts import render
from django.http import HttpResponse
from .models import Noticia


def noticias(request):
    noticias = Noticia.objects.all()
    return render(request, 'index.html', {'noticias':noticias})

