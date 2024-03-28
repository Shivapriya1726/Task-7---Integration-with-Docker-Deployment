FROM python:3.10
WORKDIR /app
RUN pip install flask && \
    echo "Dependencies installed successfully."
RUN groupadd -r flask && useradd -r -g flask flask
USER flask
CMD ["python", "app.py"]
