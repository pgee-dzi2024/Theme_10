# Generated by Django 2.0.3 on 2018-04-05 09:09

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('customer', '0002_auto_20180405_0707'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orders',
            name='dealer',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='dealer.CarDealer'),
        ),
        migrations.AlterField(
            model_name='orders',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AlterField(
            model_name='orders',
            name='vehicle',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='dealer.Vehicles'),
        ),
    ]
