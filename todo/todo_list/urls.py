from django.urls import path
from . import views
from django.views.decorators.csrf import csrf_exempt


urlpatterns = [
    path('', views.home, name='home'),
    path('list/<int:id>', views.index, name='todo'),
    path('priority/<str:name>', views.priority_index, name='priority'),
    path('completed', views.completed_list, name='completed'),
    path('today', views.today_list, name='today'),
    path('active', views.active_list, name='active'),
    path('add_predefined', csrf_exempt(views.add_from_predefined), name='add_predefined'),
    path('change-name/<int:id>', csrf_exempt(views.change_task_name), name='change_task_name'),
    path('change-list/<int:id>', csrf_exempt(views.change_task_list), name='change_list'),
    path('change-deadline/<int:id>', csrf_exempt(views.change_deadline), name='change_deadline'),
    path('change-priority/<int:id>', csrf_exempt(views.change_priority), name='change_priority'),
    path('change-list-name/<int:id>', csrf_exempt(views.change_list_name), name='change_list_name'),
    path('<int:id>/add', csrf_exempt(views.add_task), name='add_task'),
    path('priority/<str:name>/add', csrf_exempt(views.add_task_priority), name='add_task_priority'),
    path('add-list', csrf_exempt(views.add_list), name='add_list'),
    path('delete-list/<int:id>', csrf_exempt(views.delete_list), name='delete_list'),
    path('delete-task/<int:id>', csrf_exempt(views.delete_task), name='delete_task'),
    path('complete-task/<int:id>', csrf_exempt(views.complete_task), name='complete_task'),
    path('undo-task/<int:id>', csrf_exempt(views.undo_task), name='undo_task')
]
