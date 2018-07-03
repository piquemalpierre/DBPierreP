from django.conf.urls import patterns, include, url
from rest_framework import routers
from eboutique.views import *
from erp.views import *
from django.contrib.auth.decorators import login_required

urlpatterns = patterns('',
    url(r'^$', LoginView.as_view()),
    url(r'^logout/$', LogoutView.as_view()),
    url(r'^backoffice/$', login_required(TemplateView.as_view(template_name='backoffice/index.html'))),
)
