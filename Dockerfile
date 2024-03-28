# Using the official Python image as the base image
FROM python:3.11.0-slim

# Setting the working directory in the container
WORKDIR /app

# Copying the Python dependencies file to the working directory
COPY Docker_test/requirements.txt .

# Installing Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copying the FastAPI application files to the working directory
COPY Docker_test .

# Command to run the FastAPI application
CMD ["python", "main.py"]
