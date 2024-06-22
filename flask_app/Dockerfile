# Use Miniconda as the base image
FROM continuumio/miniconda3:latest

# Install system dependencies
RUN apt-get update \
    && apt-get install -y default-libmysqlclient-dev build-essential pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /usr/src/flask_app

# Copy requirements and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Your further commands here
