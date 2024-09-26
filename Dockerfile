FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install Flask

COPY app.py /app/app.py

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

