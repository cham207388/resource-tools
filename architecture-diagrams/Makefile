# Makefile for python aws
run:
	uvicorn main:app --reload

save-dep:
	uv pip freeze > requirements.txt

install:
	uv pip install -r requirements.txt

venv:
	python3 -m etl

venv-source:
	source etl/bin/activate