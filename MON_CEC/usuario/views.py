from django.http.response import HttpResponse
from django.shortcuts import redirect, render, get_object_or_404, HttpResponseRedirect
from django.contrib.auth.decorators import login_required
from .models import Perfil
from .forms import PerfilForm
from django.contrib import messages

@login_required
def familia(request):
    familia = Perfil.objects.all()
    return render(request, 'familia.html', { 'familia': familia })

@login_required
def familiaview(request, id):
    familia = get_object_or_404(Perfil, pk=id)
    return render(request, 'perfil.html', {'familia':familia})

@login_required
def novafamilia(request):
    if request.method == 'POST':
        form = PerfilForm(request.POST)

        if form.is_valid():
            task = form.save(commit=False)
            task.save()
            return redirect('/familia')

    else:
        form = PerfilForm()
        return render(request, 'newfamilia.html', {'form': form})


@login_required
def editfamilia(request, id):
    familia = get_object_or_404(Perfil, pk=id)
    form = PerfilForm(instance=familia)

    if(request.method == 'POST'):
        form = PerfilForm(request.POST, instance=familia)

        if(form.is_valid()):
            familia.save()
            return redirect('/familia')
        else:
            return render(request, 'editfamilia.html', {'form': form, 'familia': familia})
    else:
        return render(request, 'editfamilia.html', {'form': form, 'familia': familia})

@login_required
def deletefamilia(request,id):
    familia = get_object_or_404(Perfil, pk=id)
    familia.delete()

    messages.info(request, 'Membro deletado com sucesso.')

    return redirect('/familia')