### 📦 models.py
from django.db import models
from django.contrib.auth.models import User

class Post(models.Model):
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    title = models.CharField(max_length=200)
    content = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    is_deleted = models.BooleanField(default=False)  # Soft delete flag

    def __str__(self):
        return self.title


### 📝 forms.py
from django import forms
from .models import Post

class PostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = ['title', 'content']
        widgets = {
            'title': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Enter post title'}),
            'content': forms.Textarea(attrs={'class': 'form-control', 'placeholder': 'Write your content here...'}),
        }


### 🚀 views.py
from django.shortcuts import render, redirect, get_object_or_404
from .models import Post
from .forms import PostForm
from django.contrib.auth.decorators import login_required

# Display all posts
@login_required
def post_list(request):
    posts = Post.objects.filter(author=request.user, is_deleted=False).order_by('-created_at')
    return render(request, 'blog/post_list.html', {'posts': posts})

# Create a new post
@login_required
def create_post(request):
    if request.method == 'POST':
        form = PostForm(request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            post.author = request.user
            post.save()
            return redirect('post_list')
    else:
        form = PostForm()
    return render(request, 'blog/create_post.html', {'form': form})

# Edit an existing post
@login_required
def edit_post(request, post_id):
    post = get_object_or_404(Post, id=post_id, author=request.user, is_deleted=False)
    if request.method == 'POST':
        form = PostForm(request.POST, instance=post)
        if form.is_valid():
            form.save()
            return redirect('post_list')
    else:
        form = PostForm(instance=post)
    return render(request, 'blog/edit_post.html', {'form': form})

# Soft delete a post
@login_required
def delete_post(request, post_id):
    post = get_object_or_404(Post, id=post_id, author=request.user)
    post.is_deleted = True  # Soft delete
    post.save()
    return redirect('post_list')


### 🌐 urls.py
from django.urls import path
from . import views

urlpatterns = [
    path('', views.post_list, name='post_list'),
    path('create/', views.create_post, name='create_post'),
    path('edit/<int:post_id>/', views.edit_post, name='edit_post'),
    path('delete/<int:post_id>/', views.delete_post, name='delete_post'),
]


### 📄 templates/blog/post_list.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Posts</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
    <h2>My Posts</h2>
    <a href="{% url 'create_post' %}" class="btn btn-success mb-3">+ Create New Post</a>
    <ul class="list-group">
        {% for post in posts %}
            <li class="list-group-item">
                <h4>{{ post.title }}</h4>
                <p>{{ post.content }}</p>
                <small>Created at: {{ post.created_at }}</small>
                <br>
                <a href="{% url 'edit_post' post.id %}" class="btn btn-primary btn-sm">Edit</a>
                <a href="{% url 'delete_post' post.id %}" class="btn btn-danger btn-sm">Delete</a>
            </li>
        {% empty %}
            <li class="list-group-item">No posts found.</li>
        {% endfor %}
    </ul>
</body>
</html>


### 📄 templates/blog/create_post.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
    <h2>Create a New Post</h2>
    <form method="POST">
        {% csrf_token %}
        {{ form.as_p }}
        <button type="submit" class="btn btn-primary">Publish Post</button>
    </form>
</body>
</html>


### 📄 templates/blog/edit_post.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-5">
    <h2>Edit Post</h2>
    <form method="POST">
        {% csrf_token %}
        {{ form.as_p }}
        <button type="submit" class="btn btn-primary">Update Post</button>
    </form>
</body>
</html>
