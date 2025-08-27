install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py

loadtest:
	locust -f locustfile.py --headless -u 10 -r 1 --run-time 30s --host http://localhost:8000
