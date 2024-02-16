# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# for coppy all files and dirs
# COPY . .
# wee need to copy only one file
COPY app.py app.py

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
# CMD [ "python3", "-m" , "flask", "--app", ".\hello.py", "run", "--host=0.0.0.0"]