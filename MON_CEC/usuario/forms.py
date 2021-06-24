from django import forms
from django.db.models import fields
from django.db.models.base import Model
from .models import Perfil

class PerfilForm(forms.ModelForm):
    class Meta:
        model = Perfil
        fields = ('nome','cpf','sexo', 'nascimento', 'graudeparentesco', 'comorbidades', 'pais', 'estado', 'cidade', 'rua', 'bairro', 'complemento', 'medicoresponsavel', 'especializacaodomedico', 'hospital', 'telefone', 'sintomas', 'altura', 'peso', 'testesrealizados')
