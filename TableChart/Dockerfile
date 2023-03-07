# Use the official Python image as the base image
FROM python:3.9-slim-buster

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 80
EXPOSE 80

# Start the web server
CMD ["python", "app.py"]