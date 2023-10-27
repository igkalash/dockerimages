FROM python:3.9-slim-buster
COPY . /app
WORKDIR /app
# Install pre-requisites
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["python3", "main.py"]
