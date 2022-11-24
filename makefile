SHELL := /bin/bash


create_environment:
	python3.9 -m venv $(ENVIRONMENT)

activate_environment_and_install:
	. $(ENVIRONMENT)/bin/activate && pip install ipykernel

ipkernel_setup:
	ipython kernel install --name=$(ENVIRONMENT) --user 


all : create_environment activate_environment_and_install