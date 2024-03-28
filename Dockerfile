FROM python:3.8-buster
WORKDIR /app
RUN pip install Flask
COPY . /app
CMD ["python", "app.py"]
