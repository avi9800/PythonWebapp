# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install required Python packages
RUN pip3 install flask

# Expose the application port
EXPOSE 8082

# Define the command to run the application
CMD ["python3", "app.py"]