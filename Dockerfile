FROM ubuntu:latest


RUN apt-get update -y
RUN apt-get upgrade -y
COPY . /app
WORKDIR /app
# Install pre-requisites
RUN apt-get  install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["python3", "main.py"]
