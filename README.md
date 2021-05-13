# Python application boilerplate

## Introduction

This repository aims to facilitate the creation of a python service.

It uses python3.9 as a base.

It is dockerized, with a minimal base image to reduce its size to the vital minimum.

## Features

Easy to develop on with development helpers:

- `pylint`: to help you write pythonic code.
- `yapf`: to help you format your code.
- `mypy`: to help you write python code with typings.

Easy to test with the help of some tools:

- TO DEFINE

Easy to deploy, as it is dockerized.

## Development

In order to develop you service in optimal conditions (linting, autocomplete, etc),
you need to setup your environment.

Just run `./setup.sh` and you're good to go !

In your current shell, you just need to activate your virtual environment if you want to launch your application locally, without using docker:

`source .virtualenv/bin/activate`

## Build your image

Just run `docker build -t <YOUR_IMAGE_NAME>:<YOUR_TAG> .`

## Test your application

TODO
