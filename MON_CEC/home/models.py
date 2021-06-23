from django.db import models
from django.db.models.fields import DateField

class Dado(models.Model):
    regiao = models.CharField(max_length=100)
    estado = models.CharField(max_length=3)
    municipio = models.CharField(max_length=100)
    data = DateField()
    casosAcumulado = models.IntegerField()
    casosNovos = models.IntegerField()
    obitosAcumulado = models.IntegerField()
    obitosNovos = models.IntegerField()

