# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class User(models.Model):
    username = models.CharField(db_column='UserName', primary_key=True, max_length=25, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    balancenumber = models.FloatField(db_column='BalanceNumber', blank=True, null=True)  # Field name made lowercase.
    balancecurrency = models.CharField(db_column='BalanceCurrency', max_length=10, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=50, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    field_password = models.CharField(db_column='_Password', max_length=33, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase. Field renamed because it started with '_'.
    gender = models.BooleanField(db_column='Gender')  # Field name made lowercase.
    birthdate_day = models.IntegerField(db_column='BirthDate_Day')  # Field name made lowercase.
    birthdate_month = models.IntegerField(db_column='BirthDate_Month')  # Field name made lowercase.
    birthdate_year = models.IntegerField(db_column='BirthDate_Year')  # Field name made lowercase.
    phonenumber = models.CharField(db_column='PhoneNumber', max_length=11, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = '_User'


class Producer(models.Model):
    username = models.OneToOneField('User', models.DO_NOTHING, db_column='Producer_UName', primary_key=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PRODUCER'


class Comment(models.Model):
    username = models.ForeignKey('User', models.DO_NOTHING, db_column='UserName')  # Field name made lowercase.
    softwareid = models.ForeignKey('Software', models.DO_NOTHING, db_column='SoftwareID' , related_name='comments')  # Field name made lowercase.
    content = models.CharField(db_column='Content', max_length=250, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    date_time = models.DateTimeField(db_column='Date_Time', blank=True, null=True)  # Field name made lowercase.
    replyid = models.ForeignKey('Comment' , models.DO_NOTHING ,db_column='ReplyID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'COMMENT'



class Software(models.Model):
    field_name = models.CharField(db_column='_Name', max_length=25, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase. Field renamed because it started with '_'.
    producer_name = models.ForeignKey(Producer, models.DO_NOTHING, db_column='Producer_Name' , related_name='softwares')  # Field name made lowercase.
    explanation = models.CharField(db_column='Explanation', max_length=1000, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    price = models.IntegerField(db_column='Price', blank=True, null=True)  # Field name made lowercase.
    currency = models.CharField(db_column='Currency', max_length=10, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    capacity = models.IntegerField(db_column='Capacity')  # Field name made lowercase.
    picture = models.BinaryField(db_column='Picture', blank=True, null=True)  # Field name made lowercase.
    releasedate = models.DateField(db_column='ReleaseDate')  # Field name made lowercase.
    operatingsystem = models.CharField(db_column='OperatingSystem', max_length=10, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    field_version = models.CharField(db_column='_Version', max_length=10, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase. Field renamed because it started with '_'.
    downloadnumber = models.IntegerField(db_column='DownloadNumber', blank=True, null=True)  # Field name made lowercase.
    category1 = models.CharField(db_column='Category1', max_length=25, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    category2 = models.CharField(db_column='Category2', max_length=25, db_collation='SQL_Latin1_General_CP1_CI_AS', blank=True, null=True)  # Field name made lowercase.
    totalscore = models.BigIntegerField(db_column='TotalScore', blank=True, null=True)  # Field name made lowercase.
    Comments = models.ManyToManyField(
        User , 
        through='Comment',
        through_fields=( 'softwareid','username' ),
        related_name='Comments',
    )
    class Meta:
        managed = False
        db_table = 'SOFTWARE'
    

class Regular(models.Model):
    username = models.OneToOneField('User', models.DO_NOTHING, db_column='Regular_UName', primary_key=True)  # Field name made lowercase.

    Markeds = models.ManyToManyField(
        Software , 
        through='Marked',
        through_fields=('username' , 'softwareid'),
        related_name='Users_Marked',
    )
    
    Downloadeds = models.ManyToManyField(
        Software , 
        through= 'Downloaded' ,
        through_fields=('username' , 'softwareid') , 
        related_name='Users_Downloaded',
    )
    Boughts = models.ManyToManyField(
        Software , 
        through= 'Buy' ,
        through_fields=('username' , 'softwareid') ,
        related_name='Users_Bought',
    )

    Scoreds = models.ManyToManyField(
        Software ,
        through= 'Score' , 
        through_fields=('username' ,'softwareid'),
        related_name='Users_Scored',
    )
    class Meta:
        managed = False
        db_table = 'REGULAR'


class Score(models.Model):
    scorevalue = models.IntegerField(db_column='ScoreValue')  # Field name made lowercase.
    username = models.ForeignKey(Regular, models.DO_NOTHING, db_column='Regular_UName')  # Field name made lowercase.
    softwareid = models.ForeignKey('Software', models.DO_NOTHING, db_column='SoftwareID')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'SCORE'
        unique_together = (('username', 'softwareid'),)


class Buy(models.Model):
    username = models.OneToOneField('Regular', models.DO_NOTHING, db_column='Regular_UName', primary_key=True)  # Field name made lowercase.
    softwareid = models.ForeignKey('Software', models.DO_NOTHING, db_column='SoftwareID')  # Field name made lowercase.
    buy_time = models.DateTimeField(db_column='Buy_Time', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'BUY'
        unique_together = (('username', 'softwareid'),)



class Downloaded(models.Model):
    username = models.ForeignKey('Regular', models.DO_NOTHING, db_column='Regular_UName')  # Field name made lowercase.
    softwareid = models.ForeignKey('Software', models.DO_NOTHING, db_column='SoftwareID')  # Field name made lowercase.
  # bug dareh vaseh download az device haye mokhtalef
    class Meta:
        managed = False
        db_table = 'DOWNLOADED'
        #unique_together = (('username', 'softwareid','id'),)


class Marked(models.Model):
    username = models.ForeignKey('Regular', models.DO_NOTHING, db_column='Regular_UName')  # Field name made lowercase.
    softwareid = models.ForeignKey('Software', models.DO_NOTHING, db_column='SoftwareID' )  # Field name made lowercase.
    # id = models.IntegerField(db_column='ID',primary_key=True )
    class Meta:
        managed = False
        db_table = 'MARKED'
        unique_together = (('username', 'softwareid'),)


class CriticsSuggestions(models.Model):
    content = models.CharField(db_column='Content', max_length=1000, db_collation='SQL_Latin1_General_CP1_CI_AS')  # Field name made lowercase.
    score = models.IntegerField(db_column='Score', blank=True, null=True)  # Field name made lowercase.
    username = models.ForeignKey('User', models.DO_NOTHING, db_column='UserName')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'CRITICS_SUGGESTIONS'


class Device(models.Model):
    username = models.ForeignKey('User', models.DO_NOTHING, db_column='Device_UName', related_name='devices')  # Field name made lowercase.
    entrydate = models.DateField(db_column='EntryDate')  # Field name made lowercase.
    device_name = models.CharField(db_column='Device_name', max_length=25, db_collation='SQL_Latin1_General_CP1_CI_AS' )  # Field name made lowercase.
    class Meta:
        managed = False
        db_table = 'Device'
        unique_together = (('device_name' , 'username'),)


