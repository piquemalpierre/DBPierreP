from django.shortcuts import render

from django.http import HttpResponse
from django.template import loader

from .models import Question

from django.shortcuts import render

# Create your views here.


def detail(request, question_id):
    return HttpResponse("1? %s." % question_id)

def results(request, question_id):
    response = "2? %s."
    return HttpResponse(response % question_id)

def vote(request, question_id):
    return HttpResponse("3? %s." % question_id)


def index(request):
    latest_question_list = Question.objects.order_by('-pub_date')[:5]
    template = loader.get_template('polls/index.html')
    context = {'latest_question_list': latest_question_list,}
    return HttpResponse(template.render(context, request))

def detail2(request, question_id):
    try:
        question = Question.objects.get(pk=question_id)
    except Question.DoesNotExist:
        raise Http404("Question_of")
    return render(request, 'polls/detail.html', {'question': question})
