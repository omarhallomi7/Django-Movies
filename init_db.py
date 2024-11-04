import os
import django
from django.core import management

# Set the settings module for your project
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Movie_project.settings')

# Initialize Django
django.setup()

# Apply migrations
management.call_command('migrate')

# Load data from the fixture
management.call_command('loaddata', '/app/db.json')

print("Database initialized successfully.")
