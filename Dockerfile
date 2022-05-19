# pull official base image
FROM python:3.9-slim-buster

ENV PTYTHONPATH=/app:$PYTHONPATH

# set working directory
RUN mkdir -p /app
WORKDIR /app
RUN cd /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# add and install requirements
COPY ./requirements.txt .
RUN python3 -m pip install -r requirements.txt

# add app
COPY . .
