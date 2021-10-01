from rest_framework.serializers import ModelSerializer, SerializerMethodField
from .models import WeddingHalls, Wedding, Service, User, Food, Menu, Shift, Comment, System


class UserSerializer(ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'first_name', 'last_name', 'username', 'email', 'avatar', 'password']
        extra_kwargs = {'password': {'write_only': 'true'}}

    def create(self, validated_data):
        user = User(**validated_data)
        user.set_password(validated_data['password'])
        user.save()

        return user


class WeddingHallSerializer(ModelSerializer):
    image = SerializerMethodField()

    def get_image(self, hall):
        request = self.context['request']
        name = hall.image.name
        if name.startswith("static/"):
            path = '/%s' % name
        else:
            path = '/static/%s' % name

        return request.build_absolute_uri(path)

    class Meta:
        model = WeddingHalls
        fields = ["id", "name", "image", "system"]


class ServiceSerializer(ModelSerializer):
    image = SerializerMethodField()

    def get_image(self, ser):
        request = self.context['request']
        name = ser.image.name
        if name.startswith("static/"):
            path = '/%s' % name
        else:
            path = '/static/%s' % name

        return request.build_absolute_uri(path)

    class Meta:
        model = Service
        fields = ["id", "name", "image", "system"]


class FoodSerializer(ModelSerializer):
    image = SerializerMethodField()

    def get_image(self, fd):
        request = self.context['request']
        name = fd.image.name
        if name.startswith("static/"):
            path = '/%s' % name
        else:
            path = '/static/%s' % name

        return request.build_absolute_uri(path)

    class Meta:
        model = Food
        fields = ["id", "name", "image"]


class MenuSerializer(ModelSerializer):
    image = SerializerMethodField()

    def get_image(self, m):
        request = self.context['request']
        name = m.image.name
        if name.startswith("static/"):
            path = '/%s' % name
        else:
            path = '/static/%s' % name

        return request.build_absolute_uri(path)

    class Meta:
        model = Menu
        fields = ["id", "name", "image", "system"]


class ShiftSerializer(ModelSerializer):
    class Meta:
        model = Shift
        fields = ["id", "name", "price"]


class WeddingSerializer(ModelSerializer):
    class Meta:
        model = Wedding
        fields = ["id", "name", "wedding_hall", "organization_date", "shift", "menu", "stk"]


class WeddingDetailSerializer(WeddingSerializer):
    service = ServiceSerializer(many=True, read_only=True)
    # wedding_hall = WeddingHallSerializer()
    # shift = ShiftSerializer()
    # menu = MenuSerializer()

    class Meta:
        model = WeddingSerializer.Meta.model
        fields = WeddingSerializer.Meta.fields + ['service']


class CommentSerializer(ModelSerializer):
    class Meta:
        model = Comment
        fields = ["id", "content", "created_date", "creator"]


class SystemSerializer(ModelSerializer):
    class Meta:
        model = System
        fields = ["id", "name"]
