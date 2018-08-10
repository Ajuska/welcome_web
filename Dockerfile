FROM python:3.6-alpine

ENV PYTHONUNBUFFERED 1
RUN mkdir /welcome_web
RUN mkdir ../database
WORKDIR /welcome_web
COPY . /welcome_web/
RUN pip install -r requirements.txt
RUN python3 /welcome_web/manage.py migrate --noinput
