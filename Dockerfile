FROM python:3.8

WORKDIR /app

COPY app/ /app
COPY requirements.txt /app

RUN pip install -r requirements.txt

EXPOSE 3000
CMD python ./index.py