# Pull base image

FROM python:3.8

# Set env variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working dir
WORKDIR /code

# install dependencies
COPY Pipfile Pipfile.lock requirements.txt /code/
RUN pip install -r requirements.txt
RUN pip install django-cryptographic-fields
RUN pip install cryptography
RUN pip install django-taggit

# Copy project
COPY . /code/