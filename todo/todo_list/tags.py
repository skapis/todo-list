from django import template
from .models import ToDoList, Priority
from django.urls import reverse

register = template.Library()


@register.inclusion_tag('partials/todo_sidebar.html')
def show_lists():
    lists = ToDoList.objects.all()
    priorities = Priority.objects.all()
    return {
        'lists': lists,
        'priorities': priorities
    }


@register.simple_tag
def is_active(request, url):
    if request.path in reverse(url):
        return 'active'
    return ""

