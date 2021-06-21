# Generated by Django 3.2.3 on 2021-06-21 01:52

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Sobre',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(max_length=200)),
                ('descricao', models.CharField(max_length=1024)),
                ('imagemsobre', models.ImageField(upload_to='Sobrethumb')),
            ],
        ),
    ]