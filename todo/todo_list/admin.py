from django.contrib import admin
from .models import ToDoList, Task, State, Priority


class tasks(admin.ModelAdmin):
    list_display = ('name', 'list_id', 'deadline', 'state_id', 'priority_id')


admin.site.register(Task, tasks)
admin.site.register(State)
admin.site.register(ToDoList)
admin.site.register(Priority)

