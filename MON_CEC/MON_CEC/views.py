from django.http import HttpResponse

def home(request):
    return HttpResponse('Não há nada aqui por enquanto')

def noticias(request):
    return HttpResponse('Area de Noticias')