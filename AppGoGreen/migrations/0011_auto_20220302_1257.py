# Generated by Django 3.2.12 on 2022-03-02 07:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppGoGreen', '0010_auto_20220302_1216'),
    ]

    operations = [
        migrations.AddField(
            model_name='cartitems',
            name='CompanyName',
            field=models.CharField(default=None, max_length=100),
        ),
        migrations.AddField(
            model_name='cartitems',
            name='SellerID',
            field=models.CharField(default=None, max_length=100),
        ),
        migrations.AddField(
            model_name='cartproducts',
            name='SellerID',
            field=models.CharField(default=None, max_length=200),
        ),
        migrations.AddField(
            model_name='orderdetail',
            name='SellerID',
            field=models.CharField(default=None, max_length=200),
        ),
    ]
