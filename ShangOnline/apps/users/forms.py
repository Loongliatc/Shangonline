#encoding=utf-8
#__Author__: weesmile
#__Date__: 2018-06-15

from django import forms
from captcha.fields import CaptchaField
class UserRegisterForm(forms.Form):
    email = forms.EmailField(required=True,error_messages={
        'required':'邮箱必须填写'
    })
    password = forms.CharField(min_length=3,max_length=20,required=True,error_messages={
        'required': '密码必须填写',
        'min_length':'密码最少得3个',
        'max_length': '密码最多20个',
    })
    captcha = CaptchaField(error_messages={
        'invalid':'验证码错误'
    })

class UserLoginForm(forms.Form):
    email=forms.EmailField(required=True,error_messages={
        'required':'邮箱必须填写'
    })
    password=forms.CharField(min_length=3,max_length=20,required=True,error_messages={
        'required':'密码必须填写',
        'max_length':'密码最多20个',
        "min_length":'密码最少3个'
    })
