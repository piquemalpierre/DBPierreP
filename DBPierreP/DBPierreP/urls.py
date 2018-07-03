"""DBPierreP URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from polls import views

from django.contrib import admin
from django.urls import path


from polls import id




urlpatterns = [
    path('admin/', admin.site.urls),
    path('id/', admin.site.urls),
    path('',id.LoginView.as_view()),
    path('logout/',id.LogoutView.as_view()),
    path('backoffice/',id.Log.as_view()),

    path('A1/',views.A1.as_view()),
    path('A2/',views.A2.as_view()),
    path('A3/',views.A3.as_view()),
    path('A4/',views.A4.as_view()),
    path('A5/',views.A5.as_view()),
    path('A6/',views.A6.as_view()),
    path('A7/',views.A7.as_view()),


    #ajouter le path

]


#7redr
