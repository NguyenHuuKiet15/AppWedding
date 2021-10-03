from django.contrib import admin
from . import views
from rest_framework import routers
from django.urls import path, include
from .admin import admin_site

router = routers.DefaultRouter()
router.register("weddinghalls", views.WeddingHallViewSet, 'weddinghall')
router.register("weddings", views.WeddingViewSet, 'wedding')
router.register("services", views.ServiceViewSet, 'service')
router.register("menus", views.MenuViewSet, 'menu')
router.register("foods", views.FoodViewSet, 'food')
router.register("shift", views.ShiftViewSet, 'shift')
router.register("users", views.UserViewSet, 'user')
router.register("comments", views.CommentViewSet, 'comment')
router.register("systems", views.SystemViewSet, 'system')
router.register("bankAccount", views.BankAccViewSet, 'bankAccount')
urlpatterns = [
    path('', include(router.urls)),
    # path('oauth2-info', views.OauthInfo.as_view())
    path('admin/', admin_site.urls)
]