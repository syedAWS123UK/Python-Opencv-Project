# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Install dependencies
RUN apt-get update && apt-get install -y \
    libopencv-dev \
    python3-opencv \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install additional Python packages
RUN pip install --no-cache-dir numpy

# Specify the port number the container should expose
ENV PORT 8000

# Run opencv.py when the container launches
CMD ["python", "opencv.py"]
