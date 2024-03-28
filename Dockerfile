FROM python:3.10
WORKDIR /app
COPY app.py /app
CMD ["ls"]
CMD ["python", "app.py"]
