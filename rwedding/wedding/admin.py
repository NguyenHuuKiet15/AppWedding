from django.contrib import admin
from django.utils.html import mark_safe
from .models import WeddingHalls, Wedding, Service, Food, Menu, Shift, User, BankAccount, Comment, System


class UserAdmin(admin.ModelAdmin):
    list_display = ['id', 'first_name', 'last_name', 'username', 'email', 'avatar']
    readonly_fields = ["image"]

    def image(self, u):
        if u:
            return mark_safe(
                "<img src='/static/{img_url}' alt ='{alt}' width='120px' />".format(img_url=u.avatar.name,
                                                                                    alt=u.name))


class WeddingHallAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "active", "created_date", "image", "description"]
    readonly_fields = ["avatar"]

    def avatar(self, hall):
        if hall:
            return mark_safe(
                "<img src='/static/{img_url}' alt ='{alt}' width='120px' />".format(img_url=hall.image.name,
                                                                                    alt=hall.name))


class ServiceAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "active", "created_date", "image", "description"]
    readonly_fields = ["avatar"]

    def avatar(self, ser):
        if ser:
            return mark_safe(
                "<img src='/static/{img_url}' alt ='{alt}' width='120px' />".format(img_url=ser.image.name,
                                                                                    alt=ser.name))


# class WeddingServiceInline(admin.TabularInline):
#     model = Wedding.service.through


class FoodAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "active", "image", "menu"]
    readonly_fields = ["avatar"]

    def avatar(self, fd):
        if fd:
            return mark_safe(
                "<img src='/static/{img_url}' alt ='{alt}' width='120px' />".format(img_url=fd.image.name, alt=fd.name))


# class MenuFoodInline(admin.TabularInline):
#     model = Menu.food.through


class MenuAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "active", "image"]
    readonly_fields = ["avatar"]

    def avatar(self, menu):
        if menu:
            return mark_safe("<img src='/static/{img_url}' alt ='{alt}' width='120px' />".format(img_url=menu.image.name, alt=menu.name))


class ShiftAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "active", "price"]


class WeddingAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "active", "created_date", "shift", "menu", "organization_date", "wedding_hall"]
    search_fields = ["name", "created_date", "wedding_hall__name"]
    # inlines = [WeddingServiceInline, ]


class BankAccountAdmin(admin.ModelAdmin):
    list_display = ["id", "name", "active", "created_date", "number", "surplus"]


class CommentAdmin(admin.ModelAdmin):
    list_display = ["id", "content", "creator", "created_date", "updated_date"]


class SystemAdmin(admin.ModelAdmin):
    list_display = ["id", "name"]


class WeddingAppAdminSite(admin.AdminSite):
    site_header = 'HE THONG QUAN LY NHA HANG TIEC CUOI'

admin_site = WeddingAppAdminSite('myweddingapp')


# admin.site.register(Wedding, WeddingAdmin)
# admin.site.register(WeddingHalls, WeddingHallAdmin)
# admin.site.register(Service, ServiceAdmin)
# admin.site.register(Shift, ShiftAdmin)
# admin.site.register(Food, FoodAdmin)
# admin.site.register(Menu, MenuAdmin)
# admin.site.register(User, UserAdmin)
# admin.site.register(BankAccount, BankAccountAdmin)
# admin.site.register(Comment, CommentAdmin)
# admin.site.register(System, SystemAdmin)

admin_site.register(Wedding, WeddingAdmin)
admin_site.register(WeddingHalls, WeddingHallAdmin)
admin_site.register(Service, ServiceAdmin)
admin_site.register(Shift, ShiftAdmin)
admin_site.register(Food, FoodAdmin)
admin_site.register(Menu, MenuAdmin)
admin_site.register(User, UserAdmin)
admin_site.register(BankAccount, BankAccountAdmin)
admin_site.register(Comment, CommentAdmin)
admin_site.register(System, SystemAdmin)
