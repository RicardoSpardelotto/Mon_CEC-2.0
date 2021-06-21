from django.db import models
from django.db.models.fields import DateField

class Noticia(models.Model):
    titulo = models.CharField(max_length=200)
    descricao = models.CharField(max_length=1024)
    imagemnoticia = models.ImageField(upload_to='Noticiathumb')
    site = models.CharField(max_length=500)

    def __str__(self):
        return self.titulo
