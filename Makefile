install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install-gcp:
	pip install --upgrade pip &&\
		pip install -r requirements-gcp.txt

install-aws:
	pip install --upgrade pip &&\
		pip install -r requirements-aws.txt

install-amazon-linux:
	pip install --upgrade pip &&\
		pip install -r amazon-linux.txt

lint:
#R means refactor suggestions , this says if your function is long , too many variables or repeated logics etc
#C means Variable names not in snake_case Missing spaces around operators ,Import ordering not perfect , Line spacing issues
	pylint --disable=R,C main.py

format:
	black *.py

test:
	python -m pytest -vv --cov=main test_main.py