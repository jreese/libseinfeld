seinfeld.db:
	wget https://noswap.com/pub/seinfeld.db

README:
	cp README.rst README

build:
	python setup.py build

dev:
	python setup.py develop

upload: README
	python setup.py sdist upload

lint:
	python -m flake8 --show-source .

test: seinfeld.db
	python -m unittest tests

clean:
	rm -rf build dist README MANIFEST seinfeld.egg-info seinfeld.db
