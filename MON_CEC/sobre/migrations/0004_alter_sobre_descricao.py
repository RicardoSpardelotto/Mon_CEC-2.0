# Generated by Django 3.2.3 on 2021-06-21 02:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sobre', '0003_alter_sobre_descricao'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sobre',
            name='descricao',
            field=models.TextField(max_length=1024),
        ),
    ]