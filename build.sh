#!/usr/bin/env bash
# exit on error
set -o errexit

# poetry install
pip install -r requirements.txt

DJANGO_SUPERUSER_PASSWORD=somepassword python manage.py createsuperuser --no-input --username=evelyn777  --email=julio@example.com
DJANGO_SUPERUSER_PASSWORD=somepassword python manage.py createsuperuser --no-input --username=evelyn777 --email=julio@example.com

python manage.py collectstatic --no-input
python manage.py migrate