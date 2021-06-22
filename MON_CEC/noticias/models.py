from django.db import models
from django.db.models.fields import DateField

class Noticia(models.Model):
    titulo = models.CharField(max_length=200)
    descricao = models.TextField(max_length=1024)
    imagemnoticia = models.ImageField(upload_to='Noticiathumb')
    site = models.CharField(max_length=500)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.titulo

