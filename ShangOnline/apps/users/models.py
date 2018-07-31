from datetime import datetime
from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.

class UserProfiles(AbstractUser):
    #用户信息表
    nick_name = models.CharField(max_length=20,null=True,blank=True,verbose_name="用户昵称")
    birthday = models.DateField(null=True,blank=True,verbose_name="用户生日")
    gender = models.CharField(choices=(('girl','女'),('boy','男')),max_length=5,verbose_name="学生性别",default="girl")
    address = models.CharField(max_length=200,null=True,blank=True,verbose_name="学生地址")
    phone = models.CharField(max_length=11,verbose_name="学生手机",null=True,blank=True)
    image = models.ImageField(upload_to="user/%y/%m",null=True,blank=True,max_length=100,verbose_name="学生头像")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")

    def __str__(self):
        return self.username

    class Meta:
        verbose_name = "学生信息"
        verbose_name_plural = verbose_name


class EmailVerify(models.Model):
    email = models.EmailField(max_length=100,verbose_name="邮箱")
    code = models.CharField(max_length=20,verbose_name="验证码")
    send_type = models.CharField(choices=(('register',"注册"),('foget','修改')),max_length=20,verbose_name="验证码类型")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="发送时间")

    def __str__(self):
        return self.code

    class Meta:
        verbose_name = "邮箱验证"
        verbose_name_plural = verbose_name
