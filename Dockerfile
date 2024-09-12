# Use python:3.9-slim as base image
FROM python:3.9-slim

# Install Docker CLI
RUN apt-get update && \
    apt-get install -y \
    docker-cli \
    && apt-get clean

# Set up the working directory
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application code
COPY . .

# Command to run the application
CMD ["python", "app.py"]

