FROM nginx:latest

WORKDIR /my_code

COPY super_code.py ./

RUN apt-get update -y

EXPOSE 80
