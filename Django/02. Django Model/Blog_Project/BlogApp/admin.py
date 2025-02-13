from django.contrib import admin
from .models import Post

@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    list_display = ('title', 'content', 'author', 'updated_at', 'created_at')
    list_filter = ('title', 'author')