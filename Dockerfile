FROM python:3.9-slim-buster
WORKDIR /app
COPY requirements.txt .
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 5000 80
CMD ["python3", "main.py"]
