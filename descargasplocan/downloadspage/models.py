from django.db import models

# Create your models here.
from django.utils.timezone import now


class file(models.Model):
    name = models.CharField(max_length=100)
    file = models.FileField()
    category = models.CharField(max_length=150, default='undefined')
    subcategory = models.CharField(max_length=150, null=True, blank=True)
    date = models.DateTimeField(default=now)

    def __str__(self):
        name = str(self.name) + " - " + str(self.category)
        return name

class client(models.Model):
    name = models.CharField(max_length=100)
    location = models.CharField(max_length=250)
    purpose = models.CharField(max_length=350)
    id_file = models.ForeignKey(file, on_delete=models.CASCADE)
    date = models.DateTimeField(default=now)

    def __str__(self):
        name = str(self.name) + " - " + str(self.date)
        return name

