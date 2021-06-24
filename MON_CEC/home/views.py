from django.core import paginator
from django.http.response import HttpResponse
from django.shortcuts import render
from .models import Dado
from django.core.paginator import Paginator

def home(request):
    home_list = Dado.objects.all().order_by('-data')

    paginator = Paginator(home_list,1)

    page = request.GET.get('page')

    home = paginator.get_page(page)

    return render(request, 'home.html', {'home':home})
