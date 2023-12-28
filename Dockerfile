# Use an official Python runtime as a parent image
FROM python:3.9-alpine

# Install dependencies
RUN apk add --no-cache \
    build-base \
    cmake \
    git \
    jpeg-dev \
    zlib-dev

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install OpenCV
RUN pip install --no-cache-dir opencv-python-headless

# Install additional Python packages
RUN pip install --no-cache-dir numpy

# Specify the port number the container should expose
ENV PORT 8000

# Run opencv.py when the container launches
CMD ["python", "opencv.py"]
