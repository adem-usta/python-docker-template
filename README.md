# Python application template

## Introduction

This repository aims to facilitate the creation of a python service.

It uses python3.9 as a base.

It is dockerized, with a minimal base image to reduce its size to the vital minimum.

## Features

- Easy to develop on with development helpers:

  - `pylint`: to help you write pythonic code.
  - `yapf`: to help you format your code.
  - `mypy`: to help you write python code with typings.

- Easy to test with the help of some tools:

  - `pytest`: to test your app with unit tests.
  - `pytest-cov`: to check your tests coverage.

- Easy to deploy with the help of docker.

## Development

In order to develop you service in optimal conditions (linting, autocomplete, etc),
you need to setup a virtual environment and install all the packages you need:

- Run `./scripts/setup.sh` to create the virtual environment and install packages
- In your shell, activate the virtual env: `source .virtualenv/bin/activate`

If you're using `vscode`, a setting file is provided to use the virtual environment.

You need to install the official Python extension to get the best of your IDE.

### Run the app locally

Run `python -m app` in your shell with activated virtual environment.

### Run tests locally

Run `python -m pytest --cov=app --cov-report term-missing tests`

## Docker image

The provided Dockerfile aims to facilitate the deployment of your application with docker.

### Build the app locally

Run `docker build --tag=<YOUR_IMAGE_NAME:TAG> .`

## Github Actions

GitHub Actions lets you design specific workflows according to your needs.

In this template, some workflows are provided to you:

- python-app: checks for pylint mark, code formatting and unit tests.

Feel free to add more workflows according to your needs.

## Git Hooks

To be filled ...
