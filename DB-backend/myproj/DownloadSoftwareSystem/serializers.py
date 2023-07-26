from rest_framework import serializers
from .models import * 


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model =  User
        fields = '__all__'


class ProducerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Producer 
        fields = '__all__'

class DeviceSerializer(serializers.ModelSerializer):
    class Meta:
        model = Device 
        fields = '__all__'



class RegularSerializer(serializers.ModelSerializer):
    class Meta:
        model = Regular 
        fields = '__all__'



class SoftwareSerializer(serializers.ModelSerializer):
    class Meta:
        model = Software 
        fields = '__all__'



class ScoreSerializer(serializers.ModelSerializer):
    class Meta:
        model = Score 
        fields = '__all__'



class MarkedSerializer(serializers.ModelSerializer):
    class Meta:
        model = Marked 
        fields = '__all__'



class DownloadedSerializer(serializers.ModelSerializer):
    class Meta:
        model = Downloaded 
        fields = '__all__'



class SuggestioonsSerializer(serializers.ModelSerializer):
    class Meta:
        model = CriticsSuggestions 
        fields = '__all__'



class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment 
        fields = '__all__'



class BuySerializer(serializers.ModelSerializer):
    class Meta:
        model = Buy 
        fields = '__all__'



