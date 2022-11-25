from django.shortcuts import render, redirect
from django.contrib import messages
from .models import Task, ToDoList, State, Priority
from datetime import datetime
from django.http import HttpResponseRedirect


def home(request):
    return redirect('today')


def index(request, id):
    task_list = ToDoList.objects.get(pk=id)
    lists = ToDoList.objects.all()
    tasks = Task.objects.filter(list_id=task_list, state_id=1).order_by('deadline')
    complete = Task.objects.filter(list_id=task_list, state_id=2).order_by('deadline')
    priorities = Priority.objects.all()
    states = State.objects.all()
    context = {
        'tasks': tasks,
        'complete': complete,
        'task_list': task_list,
        'lists': lists,
        'states': states,
        'priorities': priorities
    }
    return render(request, 'todo/index.html', context)


def completed_list(request):
    lists = ToDoList.objects.all()
    tasks = Task.objects.filter(state_id=1).order_by('deadline')
    complete = Task.objects.filter(state_id=2).order_by('deadline')
    priorities = Priority.objects.all()
    states = State.objects.all()
    context = {
        'complete': complete,
        'lists': lists,
        'states': states,
        'priorities': priorities
    }
    return render(request, 'todo/completed.html', context)


def today_list(request):
    lists = ToDoList.objects.all()
    tasks = Task.objects.filter(deadline=datetime.today().date(), state_id=1)
    priorities = Priority.objects.all()
    states = State.objects.all()
    context = {
        'lists': lists,
        'tasks': tasks,
        'states': states,
        'priorities': priorities
    }
    return render(request, 'todo/today.html', context)


def active_list(request):
    lists = ToDoList.objects.all()
    tasks = Task.objects.filter(state_id=1).order_by('deadline')
    priorities = Priority.objects.all()
    states = State.objects.all()
    context = {
        'lists': lists,
        'tasks': tasks,
        'states': states,
        'priorities': priorities
    }
    return render(request, 'todo/active.html', context)


def priority_index(request, name):
    priority = Priority.objects.get(name=name)
    priorities = Priority.objects.all()
    lists = ToDoList.objects.all()
    priority_tasks = Task.objects.filter(priority_id=priority.pk, state_id=1)
    completed_tasks = Task.objects.filter(priority_id=priority.pk, state_id=2)
    context = {
        'priority': priority,
        'tasks': priority_tasks,
        'complete': completed_tasks,
        'priorities': priorities,
        'lists': lists
    }
    return render(request, 'todo/index_priority.html', context)


def add_list(request):
    if request.method == 'POST':
        list_name = request.POST['list_name']
        if not list_name:
            messages.error(request, 'Name of the list is required')
        lists = ToDoList.objects.filter(name=list_name)
        if lists.exists():
            messages.error(request, 'This list already exists, please add tasks here')
            return redirect('todo', lists[0].pk)
        ToDoList.objects.create(name=list_name)
        created_list = ToDoList.objects.get(name=list_name)
        return redirect('todo', created_list.pk)


def add_task(request, id):
    t_list = ToDoList.objects.get(pk=id)
    if request.method == 'POST':
        name = request.POST['task_name']

        if not name:
            messages.error(request, 'Name of the task is required')
            return redirect('todo', id)

        deadline = request.POST['deadline']
        priority = request.POST['priority']
        Task.objects.create(name=name, deadline=deadline, list_id=t_list,
                            state_id=State.objects.get(pk=1), priority_id=Priority.objects.get(name=priority))
        return redirect('todo', id)


def add_task_priority(request, name):
    if request.method == 'POST':
        task_name = request.POST['task_name']

        if not name:
            messages.error(request, 'Name of the task is required')
            return redirect('priority', name)

        deadline = request.POST['deadline']
        task_list = request.POST['task_list']
        Task.objects.create(name=task_name, deadline=deadline, list_id=ToDoList.objects.get(pk=task_list),
                            state_id=State.objects.get(pk=1), priority_id=Priority.objects.get(name=name))
        return redirect('priority', name)


def delete_list(request, id):
    task_list = ToDoList.objects.get(pk=id)
    task_list.delete()
    messages.success(request, 'List was removed')
    return redirect('today')


def delete_task(request, id):
    task = Task.objects.get(pk=id)
    current_list = ToDoList.objects.get(pk=task.list_id.pk)
    task.delete()

    if 'list' not in request.META['HTTP_REFERER']:
        messages.success(request, 'Task was removed')
        return HttpResponseRedirect(request.META['HTTP_REFERER'])

    messages.success(request, 'Task was removed')
    return redirect('todo', current_list.pk)


def complete_task(request, id):
    task = Task.objects.get(pk=id)
    current_list = ToDoList.objects.get(pk=task.list_id.pk)
    task.state_id = State.objects.get(name='Completed')
    task.save()

    if 'list' not in request.META['HTTP_REFERER']:
        return HttpResponseRedirect(request.META['HTTP_REFERER'])

    return redirect('todo', current_list.pk)


def undo_task(request, id):
    task = Task.objects.get(pk=id)
    current_list = ToDoList.objects.get(pk=task.list_id.pk)
    task.state_id = State.objects.get(name='Active')
    task.save()

    if 'list' not in request.META['HTTP_REFERER']:
        return HttpResponseRedirect(request.META['HTTP_REFERER'])

    return redirect('todo', current_list.pk)


def change_task_name(request, id):
    if request.method == 'POST':
        task = Task.objects.get(pk=id)
        new_name = request.POST['new_task_name']
        current_list = ToDoList.objects.get(pk=task.list_id.pk)
        task.name = new_name
        task.save()

        if 'list' not in request.META['HTTP_REFERER']:
            return HttpResponseRedirect(request.META['HTTP_REFERER'])

        return redirect('todo', current_list.pk)


def change_deadline(request, id):
    if request.method == 'POST':
        task = Task.objects.get(pk=id)
        new_deadline = request.POST['new_deadline']
        current_list = ToDoList.objects.get(pk=task.list_id.pk)
        task.deadline = new_deadline
        task.save()

        if 'list' not in request.META['HTTP_REFERER']:
            return HttpResponseRedirect(request.META['HTTP_REFERER'])

        return redirect('todo', current_list.pk)


def change_priority(request, id):
    if request.method == 'POST':
        task = Task.objects.get(pk=id)
        new_priority = Priority.objects.get(name=request.POST['new_priority'])
        current_list = ToDoList.objects.get(pk=task.list_id.pk)
        task.priority_id = new_priority
        task.save()

        if 'list' not in request.META['HTTP_REFERER']:
            return HttpResponseRedirect(request.META['HTTP_REFERER'])

        return redirect('todo', current_list.pk)


def change_list_name(request, id):
    if request.method == 'POST':
        current_list = ToDoList.objects.get(pk=id)
        new_name = request.POST['new_list_name']
        current_list.name = new_name
        current_list.save()

        return redirect('todo', current_list.pk)


def add_from_predefined(request):
    if request.method == 'POST':
        name = request.POST['task_name']
        task_list = request.POST['list_name']
        try:
            deadline = request.POST['deadline']
        except:
            deadline = datetime.today().date()
        priority = request.POST['priority']

        if not name:
            messages.error(request, 'Name of the task is required')
            return HttpResponseRedirect(request.META['HTTP_REFERER'])

        Task.objects.create(name=name, deadline=deadline, list_id=ToDoList.objects.get(name=task_list),
                            state_id=State.objects.get(pk=1), priority_id=Priority.objects.get(name=priority))
        return HttpResponseRedirect(request.META['HTTP_REFERER'])


def change_task_list(request, id):
    if request.method == 'POST':
        task = Task.objects.get(pk=id)
        new_list = ToDoList.objects.get(name=request.POST['new_list'])
        current_list = ToDoList.objects.get(pk=task.list_id.pk)
        task.list_id = new_list
        task.save()

        if 'list' not in request.META['HTTP_REFERER']:
            return HttpResponseRedirect(request.META['HTTP_REFERER'])

        return redirect('todo', new_list.pk)
