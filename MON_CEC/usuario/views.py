from django.http.response import HttpResponse
from django.shortcuts import render


def login(request):
    return HttpResponse('login')

def register(request):
    return HttpResponse('register')

def cadastro(request):
    return HttpResponse('cadastro')

def yourName(request, name):
    return render(request, 'yourname.html', {'name': name}) 

