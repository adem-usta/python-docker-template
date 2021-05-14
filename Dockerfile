FROM python:3.9-alpine AS app

RUN adduser -D python

WORKDIR /src

COPY ./requirements.txt /requirements.txt

RUN pip install --user --upgrade pip && \
    pip install --user -r /requirements.txt

COPY ./src /src

CMD ["python", "main.py"]

FROM app AS tests

WORKDIR /

COPY ./tests-requirements.txt /tests-requirements.txt

RUN pip install --user -r /tests-requirements.txt

COPY ./tests /tests
COPY ./.coveragerc /.coveragerc

CMD ["python", "-m", "pytest", "--cov=src", "tests"]
