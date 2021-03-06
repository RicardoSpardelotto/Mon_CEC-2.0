# Generated by Django 3.2 on 2021-06-24 17:45

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Perfil',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=100)),
                ('cpf', models.CharField(max_length=18, unique=True)),
                ('sexo', models.CharField(choices=[('F', 'Feminino'), ('M', 'Masculino'), ('+', 'Qualquer outra coisa que você possa ser ou não ser')], max_length=1)),
                ('nascimento', models.DateField()),
                ('graudeparentesco', models.CharField(max_length=100)),
                ('comorbidades', models.TextField(blank=True, max_length=100)),
                ('pais', models.CharField(max_length=100)),
                ('estado', models.CharField(max_length=2)),
                ('cidade', models.CharField(max_length=100)),
                ('rua', models.CharField(blank=True, max_length=200)),
                ('bairro', models.CharField(blank=True, max_length=100)),
                ('complemento', models.CharField(blank=True, max_length=100)),
                ('medicoresponsavel', models.CharField(blank=True, max_length=100)),
                ('especializacaodomedico', models.CharField(blank=True, max_length=100)),
                ('hospital', models.CharField(blank=True, max_length=100)),
                ('telefone', models.CharField(max_length=18)),
                ('sintomas', models.TextField(blank=True, max_length=200)),
                ('altura', models.FloatField(blank=True, max_length=100)),
                ('peso', models.IntegerField(blank=True)),
                ('testesrealizados', models.CharField(blank=True, max_length=100)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
