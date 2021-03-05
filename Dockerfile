FROM dockerhub/library/python:3.8

RUN pip install Flask==1.1.2 Flask-SQLAlchemy==2.4.4

COPY app /app
WORKDIR /app

EXPOSE 5000
CMD python3 -u app.py
