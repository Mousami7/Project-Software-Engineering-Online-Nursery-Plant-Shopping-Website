# Generated by Django 3.2.12 on 2022-03-02 06:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppGoGreen', '0009_auto_20220301_1918'),
    ]

    operations = [
        migrations.AddField(
            model_name='plantdetails',
            name='CompanyName',
            field=models.CharField(default=None, max_length=100),
        ),
        migrations.AddField(
            model_name='plantdetails',
            name='SellerId',
            field=models.CharField(default=None, max_length=100),
        ),
    ]
