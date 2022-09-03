from django.db import models


class ToDoList(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class State(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class Priority(models.Model):
    name = models.CharField(max_length=255)
    color_type = models.CharField(max_length=255, null=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = 'Priorities'


class Task(models.Model):
    name = models.CharField(max_length=255)
    list_id = models.ForeignKey(to=ToDoList, on_delete=models.CASCADE)
    deadline = models.DateField(null=True)
    state_id = models.ForeignKey(to=State, on_delete=models.SET_NULL, null=True)
    priority_id = models.ForeignKey(to=Priority, on_delete=models.SET_NULL, null=True)

    def __str__(self):
        return self.name


