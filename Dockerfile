# Use an official Python runtime as a parent image
FROM python:3.9-alpine

# Create and set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files into the container
COPY . .

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define the command to run your Flask application
CMD ["python", "app.py"]
