# Generated by Django 3.2.3 on 2021-06-21 02:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sobre', '0002_auto_20210620_2302'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sobre',
            name='descricao',
            field=models.CharField(max_length=1024),
        ),
    ]
