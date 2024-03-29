FROM dockerhub/library/python:3.8.16-slim

RUN pip install Flask==2.0.3 Flask-SQLAlchemy==2.5.1 SQLAlchemy==1.3.8

COPY app /app
WORKDIR /app

EXPOSE 5000
CMD python3 -u app.py
