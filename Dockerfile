FROM python:3.9-alpine AS app

RUN adduser -D python

WORKDIR /src

COPY ./requirements/requirements.txt /requirements.txt

RUN pip install --user --upgrade pip && \
    pip install --user -r /requirements.txt

COPY ./src /src

CMD ["python", "main.py"]

FROM app AS tests

WORKDIR /

COPY ./requirements/tests-requirements.txt /tests-requirements.txt

RUN pip install --user -r /tests-requirements.txt

COPY ./tests /tests

CMD ["python", "-m", "pytest", "--cov=src", "--cov-config=/tests/.coveragerc", "tests"]
