FROM python:3.9-alpine

RUN apk add --no-cache build-base cmake git jpeg-dev zlib-dev
WORKDIR /app
COPY . .

RUN pip install --no-cache-dir numpy
RUN pip install --no-cache-dir opencv-python

ENV PORT 8000
CMD ["python", "opencv.py", "/app/Highway.jpg"]
