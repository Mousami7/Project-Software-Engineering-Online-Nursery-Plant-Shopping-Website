from django.db import models

# Create your models here.
'''class SellLogin(models.Model):
    Username = models.CharField(max_length=100 ,default = None)
    Password = models.CharField(max_length=100 ,default = None)

    class Meta:
        db_table = 'adminLogin'''

class UserRegister(models.Model):
    Name = models.CharField(max_length=100 ,default = None)
    Mobile = models.BigIntegerField(default = None)
    Address = models.CharField(max_length=100 ,default = None)
    Email = models.EmailField(max_length=100 ,default = None)
    Username = models.CharField(max_length=100,default = None)
    Password = models.CharField(max_length=100,default = None)

    class Meta:
        db_table = 'UserRegister'

class PlantDetails(models.Model):
    SellerId = models.CharField(max_length=100,default=None)
    CompanyName = models.CharField(max_length=100,default=None)
    Name = models.CharField(max_length=100,default = None)
    Light = models.CharField(max_length=100,default = None)
    Seeds = models.CharField(max_length=100,default = None)
    Schedule = models.CharField(max_length=100,default = None)
    Maintainance = models.CharField(max_length=100,default = None)
    Description = models.CharField(max_length=200,default = None)
    Price = models.BigIntegerField(default = None)
    Pictures = models.ImageField(upload_to='static/Images', default = None)
    class Meta:
        db_table = 'PlantDetails'

class Favourite(models.Model):
    UserID = models.IntegerField(default = None)
    FlowerID = models.IntegerField(default = None)
    Fname = models.CharField(max_length=100,default = None)
    Type = models.CharField(max_length=100,default = None)
    Price = models.BigIntegerField(default = None)

    class Meta:
        db_table = 'Favourite'
        
class CartItems(models.Model):
    SellerID = models.CharField(max_length=100,default=None)
    CompanyName = models.CharField(max_length=100,default=None)
    UserID = models.IntegerField(default = None)
    ProductID = models.IntegerField(default = None)
    ProdName = models.CharField(max_length = 100 ,default = None)
    Prod_qty=models.IntegerField(default = None)
    Prod_Price=models.IntegerField(default = None)

    class Meta:
        db_table = 'CartItems'

class cartproducts(models.Model):
    SellerID = models.CharField(max_length=200,default=None)
    OrderID=models.CharField(max_length=100,default=None)
    ProdId=models.CharField(max_length=100,default=None)
    ProdName=models.CharField(max_length=100,default=None)
    UserID=models.IntegerField(default=None)
    Prodqty=models.IntegerField(default=None)
    ProdPrice=models.IntegerField(default=None)

    class Meta:
        db_table = 'cartproducts'

class OrderDetail(models.Model):
    SellerID = models.CharField(max_length=200,default=None)
    Userid =models.CharField(max_length=200,default=None)
    TotalPrice=models.CharField(max_length=200,default=None)
    OrderDate =models.CharField(max_length=200,default=None)

    class Meta:
        db_table = 'OrderDetail'


class Review(models.Model):
    CustID=models.IntegerField(default=None)
    Name =models.CharField(max_length=200,default=None)
    Email = models.EmailField(max_length=200,default=None)
    Phone=models.IntegerField(default=None)
    messages=models.CharField(max_length=200,default=None)

    class Meta:
        db_table = 'Review'


class SellerRegisterations(models.Model):
    SellerFName = models.CharField(max_length = 200,default=None)
    SellerLName = models.CharField(max_length = 200,default=None)
    SellerNumber = models.CharField(max_length = 200,default=None)
    SellerCompany = models.CharField(max_length = 200,default=None)
    SellerEmail = models.CharField(max_length = 200,default=None)
    SellerGender = models.CharField(max_length = 200,default=None)
    SellerAge = models.CharField(max_length = 200,default=None)
    SellerUser = models.CharField(max_length = 200,default=None)
    SellerPwd = models.CharField(max_length = 200,default=None)

    class Meta:
        db_table = 'SellerRegisterations'