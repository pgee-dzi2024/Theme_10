# Generated by Django 4.2.11 on 2024-05-04 22:24

from django.conf import settings
import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('dealer', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Orders',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('rent', models.CharField(max_length=8)),
                ('days', models.CharField(max_length=3)),
                ('is_complete', models.BooleanField(default=False)),
                ('dealer', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='dealer.cardealer')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to=settings.AUTH_USER_MODEL)),
                ('vehicle', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='dealer.vehicles')),
            ],
        ),
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('mobile', models.CharField(max_length=13, validators=[django.core.validators.MinLengthValidator(10), django.core.validators.MaxLengthValidator(13)])),
                ('area', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='dealer.area')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
