FROM python:3.9-alpine

RUN adduser -D worker

WORKDIR /home/worker

COPY requirements/requirements.txt requirements.txt

RUN pip install --user --upgrade pip && \
    pip install --user -r requirements.txt

COPY src src

CMD ["python", "src/main.py"]
