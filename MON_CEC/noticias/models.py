from django.db import models

class Noticia(models.Model):
    titulo = models.CharField(max_length=100)
    descricao = models.CharField(max_length=500)
    imagemnoticia = models.ImageField(upload_to='Noticiathumb')
    site = models.CharField(max_length=500)

    def __str__(self):
        return self.titulo
