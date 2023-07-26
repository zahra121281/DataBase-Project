from django.shortcuts import render
from .models import *
from django.core.exceptions import * 
from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from .serializers import *
from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import action


class BaseViewSet(viewsets.ModelViewSet):
    serializer_class = None
    queryset = None
    def get_queryset(self):
        self.queryset = self.get_serializer_class().Meta.model.objects.all()
        if self.queryset is not None:
            return self.queryset
        else:
            raise ImproperlyConfigured("queryset is not set")

    # Create a new user
    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer_class()(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    # Retrieve a user or software by their id
    def retrieve(self, request, *args, **kwargs):
        id = kwargs.get('pk')
        model = self.get_queryset().filter(id=id).first()
        if model:
            serializer = self.get_serializer_class()(model)
            return Response(serializer.data)
        else:
            return Response({'message': 'Resource not found'}, status=status.HTTP_404_NOT_FOUND)

    # Delete a user or software by their id
    def destroy(self, request, *args, **kwargs):
        id = kwargs.get('pk')
        model = self.get_queryset().filter(id=id).first()
        if model:
            model.delete()
            return Response({'message': 'Resource deleted successfully'})
        else:
            return Response({'message': 'Resource not found'}, status=status.HTTP_404_NOT_FOUND)
        

    def update(self, request, *args, **kwargs):
        id = kwargs.get('pk')
        model = self.get_queryset().filter(id=id).first()
        if model:
            serializer = self.get_serializer_class()(model, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        else:
            return Response({'message': 'Resource not found'}, status=status.HTTP_404_NOT_FOUND)

# User api ////////////////////////////////////////////



class Many2ManyRelationsViewSet(BaseViewSet):
    serializer_class = None
    queryset = None

    def get_queryset(self):
        self.queryset = self.get_serializer_class().Meta.model.objects.all()
        if self.queryset is not None:
            return self.queryset
        else:
            raise ImproperlyConfigured("queryset is not set")
        

    @action(detail=True, methods=['get'])
    def Collection_retrieve(self, request, *args, **kwargs):
        username = kwargs.get('pk') 
        models = self.get_queryset().filter(username=username).all()
        if models:
            serializer = self.get_serializer_class()(models, many=True)
            serialized_data = serializer.data

            return Response(serialized_data)
        else:
            return Response({'message': 'Resource not found'}, status=status.HTTP_404_NOT_FOUND)
    



class UserViewSet(BaseViewSet):
    serializer_class = UserSerializer
    queryset = User.objects.all()

    def retrieve(self, request, *args, **kwargs):
        username = kwargs.get('pk')
        user = User.objects.filter(username=username).first()
        if user:
            serializer = UserSerializer(user)
            return Response(serializer.data)
        else:
            return Response({'message': 'Resource not found'}, status=status.HTTP_404_NOT_FOUND)
        

    def destroy(self, request, *args, **kwargs):
        username = kwargs.get('pk')
        user = User.objects.filter(username=username).first()
        if user:
            user.delete()
            return Response({'message': 'Resource deleted successfully'})
        else:
            return Response({'message': 'Resource not found'}, status=status.HTTP_404_NOT_FOUND)
        

    def update(self, request, *args, **kwargs):
        username = kwargs.get('pk')
        user = User.objects.filter(username=username).first()
        if user:
            serializer = UserSerializer(user, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        else:
            return Response({'message': 'Resource not found'}, status=status.HTTP_404_NOT_FOUND)
    

# software api ////////////////////////////////////////////
class SoftwareViewSet(BaseViewSet):
    serializer_class = SoftwareSerializer
    queryset = Software.objects.all()

    
    @action(detail=True, methods=['get'])
    def Collection_retrieve(self, request, *args, **kwargs):
        username = kwargs.get('pk') 
        #models = self.get_queryset().filter(producer_name=username).all()
        models = Producer.objects.get(username = username ).softwares.all()
        if models:
            serializer = self.get_serializer_class()(models, many=True)
            serialized_data = serializer.data

            return Response(serialized_data)
        else:
            return Response({'message': 'Resource not found'}, status=status.HTTP_404_NOT_FOUND)
    
    


#  Device api ////////////////////////////////////////////
class DeviceViewSet(Many2ManyRelationsViewSet):
    serializer_class = DeviceSerializer
    queryset = Device.objects.all()


#  Comment api ////////////////////////////////////////////
class CommentViewSet(Many2ManyRelationsViewSet) :
    serializer_class = CommentSerializer
    queryset = Comment.objects.all()
    
    @action(detail=True, methods=['get'])
    def Collection_retrieve(self, request, *args, **kwargs):
        softwareid = kwargs.get('pk') 
        models = self.get_queryset().filter(softwareid=softwareid).all()
        #models = Software.objects.get( id = softwareid ).Comments.all()
        if models:
            serializer = self.get_serializer_class()(models, many=True)
            serialized_data = serializer.data
            return Response(serialized_data)
        else:
            return Response({'message': 'Resource not found'}, status=status.HTTP_404_NOT_FOUND)


class CriticsSuggestionsViewSet(BaseViewSet) : 
    serializer_class = SuggestioonsSerializer 
    queryset = CriticsSuggestions.objects.all()

#regular_uname
class ProducerViewSet(UserViewSet):
    serializer_class = ProducerSerializer
    queryset = Producer.objects.all()


class RegularViewSet(UserViewSet):
    serializer_class = RegularSerializer
    queryset = Regular.objects.all()


class ScoreViewSet(Many2ManyRelationsViewSet):
    serializer_class = ScoreSerializer
    queryset = Score.objects.all() 


class MarkedViewSet(Many2ManyRelationsViewSet):
    serializer_class = MarkedSerializer
    queryset = Marked.objects.all()



class DownloadedViewSet(Many2ManyRelationsViewSet):
    serializer_class = DownloadedSerializer
    queryset = Downloaded.objects.all() 


class BuyViewSet(BaseViewSet):
    serializer_class = BuySerializer
    queryset = Buy.objects.all() 
