FROM python:3.9-alpine

RUN adduser -D python

WORKDIR /src

COPY ./requirements.txt /requirements.txt

RUN pip install --user --upgrade pip && \
    pip install --user -r /requirements.txt

COPY ./src /src

CMD ["python", "main.py"]
