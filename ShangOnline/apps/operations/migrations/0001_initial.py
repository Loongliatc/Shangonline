# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2018-07-31 23:07
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='UserAskInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=20, verbose_name='咨询姓名')),
                ('phone', models.CharField(max_length=11, verbose_name='咨询手机')),
                ('course', models.CharField(max_length=20, verbose_name='咨询课程')),
                ('add_time', models.DateTimeField(default=datetime.datetime.now, verbose_name='添加时间')),
            ],
            options={
                'verbose_name': '用户咨询信息',
                'verbose_name_plural': '用户咨询信息',
            },
        ),
        migrations.CreateModel(
            name='UserCommentInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comment_content', models.CharField(max_length=200, verbose_name='评论内容')),
                ('add_time', models.DateTimeField(default=datetime.datetime.now, verbose_name='添加时间')),
            ],
            options={
                'verbose_name': '用户评论信息',
                'verbose_name_plural': '用户评论信息',
            },
        ),
        migrations.CreateModel(
            name='UserCourseInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('add_time', models.DateTimeField(default=datetime.datetime.now, verbose_name='添加时间')),
            ],
            options={
                'verbose_name': '用户所学课程信息',
                'verbose_name_plural': '用户所学课程信息',
            },
        ),
        migrations.CreateModel(
            name='UserLoveInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('love_id', models.IntegerField(verbose_name='收藏id')),
                ('love_type', models.IntegerField(choices=[(1, '收藏机构'), (2, '收藏课程'), (3, '收藏讲师')], verbose_name='收藏类别')),
                ('love_status', models.BooleanField(default=False, verbose_name='收藏状态')),
                ('add_time', models.DateTimeField(default=datetime.datetime.now, verbose_name='添加时间')),
            ],
            options={
                'verbose_name': '用户收藏信息',
                'verbose_name_plural': '用户收藏信息',
            },
        ),
        migrations.CreateModel(
            name='UserMessageInfo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('userinfo', models.IntegerField(default=0, verbose_name='所属用户')),
                ('message', models.CharField(max_length=200, verbose_name='消息内容')),
                ('msg_status', models.BooleanField(default=False, verbose_name='是否已读')),
                ('add_time', models.DateTimeField(default=datetime.datetime.now, verbose_name='添加时间')),
            ],
            options={
                'verbose_name': '用户消息信息',
                'verbose_name_plural': '用户消息信息',
            },
        ),
    ]
