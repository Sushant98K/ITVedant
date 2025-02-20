# views.py
from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.contrib import messages
from .models import Author
from django.contrib.auth import authenticate, login, logout
from .forms import RegistrationForm
from django.contrib.auth.decorators import login_required
import razorpay
from django.conf import settings
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt


def User_register(request):
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            email = form.cleaned_data['email']
            password = form.cleaned_data['password']

            # Check if username or email already exists
            if User.objects.filter(username=username).exists():
                messages.error(request, "Username already taken")
                return render(request, 'register.html', {'form': form})

            if User.objects.filter(email=email).exists():
                messages.error(request, "Email already registered")
                return render(request, 'register.html', {'form': form})

            # Create User
            user = User.objects.create_user(username=username, email=email, password=password)

            # Create Author Profile
            Author.objects.create(user=user)

            messages.success(request, "Registration successful. You can now log in.")
            return redirect('login')
        else:
            messages.error(request, "Invalid form submission")
    else:
        form = RegistrationForm()

    return render(request, 'register.html', {'form': form})

# User Login
def user_login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return HttpResponse('Login Sucessfully')
        else:
            messages.error(request, 'Invalid username or password')
    return render(request, 'login.html')

# User Logout
def user_logout(request):
    logout(request)
    return redirect('login')


# Pricing Page View
def pricing_page(request):
    return render(request, 'pricing.html')

# Create Razorpay Order
@csrf_exempt
def create_order(request):
    if request.method == "POST":
        client = razorpay.Client(auth=(settings.RAZORPAY_KEY_ID, settings.RAZORPAY_KEY_SECRET))
        amount = int(request.POST.get('amount', 0)) * 100  # Convert to paise
        currency = "INR"
        payment_order = client.order.create({
            "amount": amount,
            "currency": currency,
            "payment_capture": "1"  # Auto-capture
        })
        return JsonResponse(payment_order)

# Payment Success View
def payment_success(request):
    return render(request, 'payment_success.html')

# Payment Failed View
def payment_failed(request):
    return render(request, 'payment_failed.html')