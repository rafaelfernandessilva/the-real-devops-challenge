FROM python:3.9.10

WORKDIR /app

COPY requirements_dev.txt requirements.txt /app/

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["python", "app.py"]
