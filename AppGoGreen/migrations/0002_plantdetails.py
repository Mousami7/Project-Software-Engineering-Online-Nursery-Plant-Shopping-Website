# Generated by Django 3.2.7 on 2021-09-16 07:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppGoGreen', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='PlantDetails',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(default=None, max_length=100)),
                ('Light', models.CharField(default=None, max_length=100)),
                ('Seeds', models.CharField(default=None, max_length=100)),
                ('Schedule', models.CharField(default=None, max_length=100)),
                ('Maintainance', models.CharField(default=None, max_length=100)),
                ('Description', models.CharField(default=None, max_length=200)),
                ('Price', models.BigIntegerField(default=None)),
                ('Pictures', models.ImageField(default=None, upload_to='static/Images')),
            ],
            options={
                'db_table': 'Plantdetails',
            },
        ),
    ]
