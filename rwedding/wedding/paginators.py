from rest_framework.pagination import PageNumberPagination


class MBasePagination(PageNumberPagination):
    page_size = 20
