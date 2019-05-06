from django.db.models.functions import Length
from django.http import HttpResponse
from django.shortcuts import render

from .models import file, client

# Create your views here.


def start (request):
    all_files = file.objects.all().order_by('-date')[:25]
    data = {"files": all_files}
    return render(request, 'index.html', {'data': data})


def downloadfile(request):
    id = request.GET['id']
    dfile = file.objects.filter(id=id)[0]
    '''dfile.file to get the file that is contained in the attribute of the model File'''
    fileAttr = dfile.file
    filename = dfile.file.name
    response = HttpResponse(fileAttr, content_type='application/zip')
    response['Content-Disposition'] = 'attachment; filename=%s' % filename
    name = request.session['name']
    location = request.session['location']
    purpose = request.session['purpose']

    newclient = client(name=name, location=location, purpose=purpose, id_file=dfile)
    newclient.save()
    return response


def form(request):
    id = request.GET['id']
    if ('saved' in request.session):
        data = {"id": id, 'saved': True}
        return render(request, 'dataform.html', {'data': data})
    else:
        data = {"id": id, 'saved': False}
        return render(request, 'dataform.html', {'data': data})


def formdatasave(request):
    name = request.POST['name']
    location = request.POST['location']
    purpose = request.POST['purpose']
    id = request.POST['id']
    request.session['name'] = name
    request.session['location'] = location
    request.session['purpose'] = purpose
    request.session['id'] = id
    request.session['saved'] = True
    request.session.set_expiry(900)

    data = {"id": id, 'saved': True}
    return render(request, 'dataform.html', {'data': data})


def downloadbycategorie(request):
    cat = request.GET['cat']
    
    all_files = file.objects.filter(category=cat)
    all_subcategories = all_files.values('subcategory').distinct().order_by('subcategory').reverse()

    data = {"cat": cat, "files": all_files, "subcategories": all_subcategories}
    return render(request, 'categoriedownload.html', {'data': data})