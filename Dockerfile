# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /flask-url-shortener

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY Pipfile Pipfile.lock ./
RUN pip install pipenv
RUN pipenv install --dev --system --deploy
#RUN pipenv shell

COPY . .

CMD ["pipenv", "run", "python3", "main.py"]