from django.shortcuts import render


# Create your views here.
def home(request):
    """Home page view

    Args:
        request (_type_): _description_
    """
    context = {}
    return render(request, "blogs/home.html", context)
