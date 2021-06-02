from noticias.models import Noticia
from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    return HttpResponse("Não há nada aqui por enquanto")

def noticias(request):
    noticias = Noticia.objects.all()
    return render (request, 'index.html')
