from django.urls import path
from . import views

urlpatterns = [
    path('familia', views.familia),
    path('familia/<int:id>', views.familiaview, name="familia-view"),
    path('newfamilia/', views.novafamilia, name='nova-familia'),
    path('edit/<int:id>', views.editfamilia, name='edit-perfil'),
    path('delete/<int:id>', views.deletefamilia, name='delete-perfil'),
]