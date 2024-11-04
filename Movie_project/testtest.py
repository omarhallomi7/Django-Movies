import os
import django
from django.core import management

# Set the settings module for your project
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Movie_project.settings')

# Initialize Django
django.setup()

# Now you can call the dumpdata command
from django.core.serializers.json import Serializer as JsonSerializer

# Override the management command to set the output encoding
if __name__ == '__main__':
    with open('db.json', 'w', encoding='utf-8') as output_file:
        management.call_command('dumpdata', format='json', indent=2, stdout=output_file)
