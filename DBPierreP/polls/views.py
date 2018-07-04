from django.shortcuts import render
from django.http import HttpResponse
from django.http import *
from django.template import loader
from .models import Question
from django.contrib.auth import authenticate, login, logout
from django.views.generic import TemplateView
from django.conf import settings

# Create your views here.

class A1(TemplateView):
    template_name = 'A/A1/index.html'

class A2(TemplateView):
    template_name = 'A/A2/index.html'

class A3(TemplateView):
    template_name = 'A/A3/index.html'

class A4(TemplateView):
    template_name = 'A/A4/index.html'

class A5(TemplateView):
    template_name = 'A/A5/index.html'

class A6(TemplateView):
    template_name = 'A/A6/index.html'

class A7(TemplateView):
    template_name = 'A/A7/index.html'
