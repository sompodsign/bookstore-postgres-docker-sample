FROM python:3.8

#set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFEREd 1

# set work directory
WORKDIR /code

# install dependencies
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

#Copy project
COPY . /code/