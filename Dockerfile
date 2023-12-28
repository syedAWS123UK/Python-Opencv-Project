FROM python: alpine 3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENV port 8000
EXPOSE 8000
CMD ["python", "opencv.py"]
