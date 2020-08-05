FROM python:3.8-alpine

MAINTAINER Your Name "sinc@domain.tld"

WORKDIR /urlshort

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /urlshort/requirements.txt
# ENV FLASK_APP app.py
# ENV FLASK_RUN_HOST 0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip3 install -r requirements.txt

COPY . /urlshort
# EXPOSE 8000
# CMD ["gunicorn", "app:app", "-b", "0.0.0.0:8000"]
