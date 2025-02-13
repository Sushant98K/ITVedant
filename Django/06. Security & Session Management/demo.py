from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponse

def user_login(request):
    user = authenticate(request, username='sushant', password='password123')
    if user is not None:
        login(request, user)
        return HttpResponse("Logged in successfully")
    else:
        return HttpResponse("Invalid credentials")

def user_logout(request):
    logout(request)
    return HttpResponse("Logged out successfully")
