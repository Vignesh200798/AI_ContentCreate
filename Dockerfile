# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory to /app (root of our project in container)
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Create the package directory and copy content
# We copy the local directory into /app/content_creation so it mimics the local package structure
COPY . ./content_creation

# Set PYTHONPATH to /app so "import content_creation" works
ENV PYTHONPATH=/app

# Default port (can be overridden by cloud provider)
ENV PORT=5001

# Run the application using gunicorn
# We point to the module path content_creation.web_app
CMD gunicorn --bind 0.0.0.0:$PORT content_creation.web_app:app
