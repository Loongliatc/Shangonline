from django.shortcuts import render,redirect,reverse,HttpResponse
from .forms import UserRegisterForm,UserLoginForm
from .models import UserProfile,EmailVerify
from django.db.models import Q
from django.contrib.auth import authenticate,login,logout
from helptools.send_mail_tool import send_email_verify



def index(request):
    return render(request,'index.html')

def user_register(request):
    if request.method == 'GET':
        user_register_form = UserRegisterForm()
        return render(request,'register.html',{
            'user_register_form':user_register_form
        })
    else:
        user_register_form = UserRegisterForm(request.POST)
        if user_register_form.is_valid():
            email = user_register_form.cleaned_data['email']
            password = user_register_form.cleaned_data['password']
            user = UserProfile.objects.filter(Q(email=email)|Q(username=email))
            if user:
                return render(request,'register.html',{
                    'msg':'用户已经存在'
                })
            else:
                a = UserProfile()
                a.username = email
                a.email = email
                a.set_password(password)
                a.save()

                send_email_verify(email,'register')

                return HttpResponse('您的邮件已经发送，请尽快去激活')
        else:
            return render(request,'register.html',{
                'user_register_form':user_register_form
            })

def user_login(request):
    if request.method == 'GET':
        return render(request,'login.html',{
        })
    else:
        user_login_form = UserLoginForm(request.POST)
        if user_login_form.is_valid():
            email = user_login_form.cleaned_data['email']
            password = user_login_form.cleaned_data['password']
            a = authenticate(username=email,password=password)
            if a:
                if a.is_start:
                    login(request,a)
                    return redirect(reverse('index'))
                else:
                    return HttpResponse('请去激活')
            else:
                return render(request, 'login.html', {
                   'msg':'用户名或者密码有误'
                })
        else:
            return render(request,'login.html',{
                'user_login_form':user_login_form
            })

def user_active(request,code):
    if code:
        email_ver = EmailVerify.objects.filter(code=code)[0]
        email = email_ver.email
        user = UserProfile.objects.filter(email=email)[0]
        user.is_start = True
        user.save()
        return redirect(reverse('users:user_login'))
    else:
        pass


def user_logout(request):
    logout(request)
    return redirect(reverse('index'))