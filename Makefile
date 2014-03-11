test: unit integration

unit:
	@coverage run --branch `which nosetests` -vv --with-yanc -s tests/unit/
	@coverage report -m --fail-under=80

coverage-html: unit
	@coverage html -d cover

integration:
	@`which nosetests` -vv --with-yanc -s tests/integration/

setup:
	@pip install -U -e .\[tests\]

run:
	@thumbor -c thumbor.conf -l debug
