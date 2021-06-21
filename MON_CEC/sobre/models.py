from django.db import models
from django.db.models.fields import DateField

class Sobre(models.Model):
    nome = models.CharField(max_length=200)
    descricao = models.TextField(max_length=1024)
    imagemsobre = models.ImageField(upload_to='Sobrethumb')

    def __str__(self):
        return self.nome
