# Generated by Django 3.2.12 on 2022-03-01 11:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppGoGreen', '0006_alter_plantdetails_pictures'),
    ]

    operations = [
        migrations.CreateModel(
            name='SellerRegisteration',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('SellerFName', models.CharField(default=None, max_length=200)),
                ('SellerLName', models.CharField(default=None, max_length=200)),
                ('SellerNumber', models.CharField(default=None, max_length=200)),
                ('SellerCompany', models.CharField(default=None, max_length=200)),
                ('SellerEmail', models.CharField(default=None, max_length=200)),
                ('SellerGender', models.CharField(default=None, max_length=200)),
                ('SellerAge', models.CharField(default=None, max_length=200)),
                ('SellerUser', models.CharField(default=None, max_length=200)),
                ('SellerPwd', models.CharField(default=None, max_length=200)),
            ],
            options={
                'db_table': 'SellerRegisteration',
            },
        ),
        migrations.RenameModel(
            old_name='AdminLogin',
            new_name='SellLogin',
        ),
        migrations.AlterField(
            model_name='plantdetails',
            name='Pictures',
            field=models.ImageField(default=None, upload_to='static/Images'),
        ),
    ]
