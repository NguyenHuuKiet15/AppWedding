from django.contrib.auth.models import AbstractUser
from django.db import models


class User(AbstractUser):
    avatar = models.ImageField(upload_to='uploads/%Y/%m')


class MyBase(models.Model):
    class Meta:
        abstract = True

    name = models.CharField(max_length=100, null=False, unique=True)
    created_date = models.DateTimeField(auto_now_add=True, null=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    def __str__(self):
        return self.name


class System(models.Model):
    name = models.CharField(max_length=100, null=False, unique=True)

    def __str__(self):
        return self.name


class WeddingHalls(MyBase):
    image = models.ImageField(upload_to='wedding-hall/%Y/%m', default=None)
    description = models.TextField()
    system = models.ForeignKey('System', related_name="wedding_halls",
                               on_delete=models.SET_NULL, null=True)


class Service(MyBase):
    description = models.TextField()
    image = models.ImageField(upload_to='service/%Y/%m', default=None)
    system = models.ForeignKey('System', related_name="services",
                               on_delete=models.SET_NULL, null=True)


class Food(MyBase):
    image = models.ImageField(upload_to='food/%Y/%m', default=None)
    menu = models.ForeignKey('Menu', related_name="foods",
                             on_delete=models.SET_NULL, null=True)


class Menu(MyBase):
    image = models.ImageField(upload_to='menu/%Y/%m', default=None)
    system = models.ForeignKey('System', related_name="menus",
                               on_delete=models.SET_NULL, null=True)


class Shift(MyBase):
    price = models.CharField(max_length=50)


class BankAccount(models.Model):
    name = models.CharField(max_length=100, null=False, unique=True)
    created_date = models.DateTimeField(auto_now_add=True, null=True)
    active = models.BooleanField(default=True)
    number = models.CharField(max_length=12)
    surplus = models.CharField(max_length=100)

    def __str__(self):
        return self.number


class Wedding(MyBase):
    class Meta:
        unique_together = ('name', 'wedding_hall')
        ordering = ["-id"]

    wedding_hall = models.ForeignKey(WeddingHalls, related_name="weddings",
                                     on_delete=models.SET_NULL, null=True)
    service = models.ManyToManyField(Service, related_name="weddings", blank=True)
    organization_date = models.DateField()
    menu = models.ForeignKey(Menu, related_name="weddings",
                             on_delete=models.SET_NULL, null=True)
    shift = models.ForeignKey(Shift, related_name="weddings",
                              on_delete=models.SET_NULL, null=True)
    stk = models.ForeignKey(BankAccount, related_name="weddings", on_delete=models.SET_NULL, null=True)


class Comment(models.Model):
    content = models.TextField()
    creator = models.ForeignKey(User, on_delete=models.CASCADE)
    created_date = models.DateTimeField(auto_now_add=True, null=True)
    updated_date = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.content
