from django.shortcuts import render
from django.http import HttpResponse

def home(request):
    return render (request, 'index.html')

def noticias(request):
    return HttpResponse('Area de Noticias')

