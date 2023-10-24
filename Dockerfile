FROM ubuntu:latest


RUN apt-get update -y
RUN apt-get upgrade -y

# Install pre-requisites
RUN apt-get -y install \
    python3\
    python3-pip

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
RUN python3 server.py
EXPOSE 2000

CMD ["python3", "server.py"]
