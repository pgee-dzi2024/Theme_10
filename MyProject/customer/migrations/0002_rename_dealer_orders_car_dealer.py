# Generated by Django 4.2.11 on 2024-05-21 19:57

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('customer', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='orders',
            old_name='dealer',
            new_name='car_dealer',
        ),
    ]