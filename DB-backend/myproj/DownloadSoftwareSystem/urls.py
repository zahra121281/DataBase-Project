
from django.urls import path
from . import views
from rest_framework import routers
from django.urls import path , include 

router = routers.DefaultRouter()

router.register(r'users',views.UserViewSet)
router.register(r'softwares', views.SoftwareViewSet)
router.register(r'Device', views.DeviceViewSet)
router.register(r'Comment', views.CommentViewSet)
router.register(r'CriticsSuggestions' , views.CriticsSuggestionsViewSet)
router.register(r'Producer-Users' , views.ProducerViewSet ) 
router.register(r'Regular-Users' , views.RegularViewSet )
router.register(r'Score' , views.ScoreViewSet )
router.register(r'Marked' , views.MarkedViewSet )
router.register(r'Downloaded' , views.DownloadedViewSet )
router.register(r'Buy' , views.BuyViewSet )

app_name = 'Downloadsoftwaresystem'

urlpatterns = [
    path('', include(router.urls)),
]



