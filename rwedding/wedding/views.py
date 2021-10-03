from rest_framework import viewsets, generics, status, permissions
from rest_framework.views import APIView
from rest_framework.parsers import MultiPartParser
from .models import WeddingHalls, Wedding, Service, User, Food, Menu, Shift, Comment, System, BankAccount
from rest_framework.decorators import action
from rest_framework.response import Response
from .serializers import WeddingHallSerializer, WeddingSerializer, WeddingDetailSerializer, UserSerializer, \
    ServiceSerializer, FoodSerializer, MenuSerializer, ShiftSerializer, CommentSerializer, SystemSerializer, BankAcSerializer
from .paginators import MBasePagination
from django.http import Http404


class WeddingHallViewSet(viewsets.ViewSet,
                         generics.ListAPIView,
                         generics.RetrieveAPIView):
    serializer_class = WeddingHallSerializer
    pagination_class = MBasePagination

    def get_queryset(self):
        halls = WeddingHalls.objects.filter(active=True)
        find = self.request.query_params.get('find')
        if find is not None:
            halls = halls.filter(name__icontains=find)
        sys_id = self.request.query_params.get('system_id')
        if sys_id is not None:
            halls = halls.filter(system_id=sys_id)

        return halls

    @action(methods=['get'], detail=True, url_path='weddings')
    def get_weddings(self, request, pk):
        # hall = WeddingHalls.objects.get(pk=pk)
        weddings = self.get_object().weddings.filter(active=True)

        return Response(WeddingSerializer(weddings, many=True).data,
                        status=status.HTTP_200_OK)


class WeddingViewSet(viewsets.ViewSet,
                     generics.ListAPIView,
                     generics.RetrieveAPIView,
                     generics.CreateAPIView):
    queryset = Wedding.objects.filter(active=True)
    serializer_class = WeddingDetailSerializer
    pagination_class = MBasePagination

    # permission_classes = [permissions.IsAuthenticated]

    def list(self, request, *args, **kwargs):
        if request.user == self.get_object().creator:
            return super().list(request, *args, **kwargs)

        return Response(status=status.HTTP_403_FORBIDDEN)

    def create(self, request, *args, **kwargs):
        if request.user == self.get_object().creator:
            return super().create(request, *args, **kwargs)

        return Response(status=status.HTTP_403_FORBIDDEN)

    def retrieve(self, request, *args, **kwargs):
        if request.user == self.get_object().creator:
            return super().retrieve(request, *args, **kwargs)

        return Response(status=status.HTTP_403_FORBIDDEN)

    def partial_update(self, request, *args, **kwargs):
        if request.user == self.get_object().creator:
            return super().partial_updat(request, *args, **kwargs)

        return Response(status=status.HTTP_403_FORBIDDEN)

    # @action(methods=['post'], detail=True, url_path="services")
    # def add_service(self, request, pk):
    #     try:
    #         wedding = self.get_object()
    #     except Http404:
    #         return Response(status=status.HTTP_404_NOT_FOUND)
    #     else:
    #         services = request.data.get("services")
    #         if services is not None:
    #             for service in services:
    #                 s, _ = Service.objects.get_or_create(name=service)
    #                 wedding.services.add(s)
    #
    #             wedding.save()
    #
    #             return Response(self.serializer_class(wedding).data,
    #                             status=status.HTTP_201_CREATED)
    #
    #     return Response(status=status.HTTP_404_NOT_FOUND)
    #
    # @action(methods=['post'], detail=True, url_path="weddinghalls")
    # def add_hall(self, request, pk):
    #     try:
    #         wedding = self.get_object()
    #     except Http404:
    #         return Response(status=status.HTTP_404_NOT_FOUND)
    #     else:
    #         halls = request.data.get("weddinghalls")
    #         if halls is not None:
    #             for hall in halls:
    #                 h, _ = WeddingHalls.objects.get_or_create(name=hall)
    #                 wedding.halls.add(h)
    #
    #             wedding.save()
    #
    #             return Response(self.serializer_class(wedding).data,
    #                             status=status.HTTP_201_CREATED)
    #
    #     return Response(status=status.HTTP_404_NOT_FOUND)


class ServiceViewSet(viewsets.ViewSet,
                     generics.ListAPIView,
                     generics.RetrieveAPIView):
    queryset = Service.objects.filter(active=True)
    serializer_class = ServiceSerializer
    pagination_class = MBasePagination

    def get_permissions(self):
        if self.action == 'add_comment':
            return [permissions.IsAuthenticated()]

        return [permissions.AllowAny()]

    def get_queryset(self):
        services = Service.objects.filter(active=True)

        find = self.request.query_params.get('find')
        if find is not None:
            services = services.filter(name__icontains=find)
        sys_id = self.request.query_params.get('system_id')
        if sys_id is not None:
            services = services.filter(system_id=sys_id)

        return services


class FoodViewSet(viewsets.ViewSet, generics.ListAPIView,
                  generics.RetrieveAPIView):
    queryset = Food.objects.filter(active=True)
    serializer_class = FoodSerializer
    pagination_class = MBasePagination


class MenuViewSet(viewsets.ViewSet, generics.ListAPIView,
                  generics.RetrieveAPIView):
    serializer_class = MenuSerializer

    pagination_class = MBasePagination

    def get_queryset(self):
        menus = Menu.objects.filter(active=True)

        find = self.request.query_params.get('find')
        if find is not None:
            menus = menus.filter(name__icontains=find)
        sys_id = self.request.query_params.get('system_id')
        if sys_id is not None:
            menus = menus.filter(system_id=sys_id)

        return menus


class ShiftViewSet(viewsets.ViewSet, generics.ListAPIView,
                   generics.RetrieveAPIView):
    queryset = Shift.objects.filter(active=True)
    serializer_class = ShiftSerializer


class SystemViewSet(viewsets.ViewSet,
                    generics.ListAPIView,
                    generics.RetrieveAPIView):
    queryset = System.objects.all()
    serializer_class = SystemSerializer


class UserViewSet(viewsets.ViewSet,
                  generics.ListAPIView,
                  generics.CreateAPIView, ):
    queryset = User.objects.filter(is_active=True)
    serializer_class = UserSerializer
    parser_classes = [MultiPartParser, ]

    def get_permissions(self):
        if self.action == 'get_current_user':
            return [permissions.IsAuthenticated()]

        return [permissions.AllowAny()]

    @action(methods=['get'], detail=False, url_path="current-user")
    def get_current_user(self, request):
        return Response(self.serializer_class(request.user).data,
                        status=status.HTTP_200_OK)


class BankAccViewSet(viewsets.ViewSet, generics.ListAPIView,
                     generics.DestroyAPIView,
                     generics.UpdateAPIView):
    queryset = BankAccount.objects.all()
    serializer_class = BankAcSerializer


class CommentViewSet(viewsets.ViewSet,
                     generics.ListAPIView,
                     generics.CreateAPIView,
                     generics.DestroyAPIView,
                     generics.UpdateAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer

    # permission_classes = [permissions.IsAuthenticated]

    def create(self, request, *args, **kwargs):
        if request.user == self.get_object().creator:
            return super().create(request, *args, **kwargs)

        return Response(status=status.HTTP_403_FORBIDDEN)

    def destroy(self, request, *args, **kwargs):
        if request.user == self.get_object().creator:
            return super().destroy(request, *args, **kwargs)

        return Response(status=status.HTTP_403_FORBIDDEN)

    def partial_update(self, request, *args, **kwargs):
        if request.user == self.get_object().creator:
            return super().partial_updat(request, *args, **kwargs)

        return Response(status=status.HTTP_403_FORBIDDEN)

# class OauthInfo(APIView):
#     def get(self, request):
#         return Response(settings.OAUTH2_INFO, status=status.HTTP_200_OK)
