#!/bin/bash
# build_files.sh

# Exit immediately if a command exits with a non-zero status
set -e

# Install any Python dependencies (if necessary)
pip install -r requirements.txt

# Collect static files for Django
echo "Collecting static files..."
python3 manage.py collectstatic --noinput

# Apply database migrations
echo "Applying database migrations..."
python3 manage.py migrate
