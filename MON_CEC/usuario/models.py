import datetime
from django.db import models
from django.db.models.fields import DateField

class Perfil(models.Model):
    STATUS = (
        ('F', 'Feminino'),
        ('M', 'Masculino'),
        ('+', 'Qualquer outra coisa que você possa ser ou não ser'),
    )
    nome = models.CharField(max_length=100)
    cpf = models.CharField(max_length=18, unique=True)
    sexo = models.CharField(
        max_length=1,
        choices=STATUS,
    )
    nascimento = DateField()
    graudeparentesco = models.CharField(max_length=100)
    comorbidades = models.TextField(max_length=100, blank=True)
    pais = models.CharField(max_length=100)
    estado = models.CharField(max_length=2)
    cidade = models.CharField(max_length=100)
    rua = models.CharField(max_length=200, blank=True)
    bairro = models.CharField(max_length=100, blank=True)
    complemento = models.CharField(max_length=100, blank=True)
    medicoresponsavel = models.CharField(max_length=100, blank=True)
    especializacaodomedico = models.CharField(max_length=100, blank=True)
    hospital = models.CharField(max_length=100, blank=True)
    telefone = models.CharField(max_length=18)
    sintomas = models.TextField(max_length=200, blank=True)
    altura = models.FloatField(max_length=100, blank=True)
    peso = models.IntegerField(blank=True)
    testesrealizados = models.CharField(max_length=100, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    




    def __str__(self):
        return self.nome