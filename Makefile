FVM := fvm flutter

.PHONY: install pubget run analyze test build-web

install:
	fvm install
	$(FVM) pub get

pubget:
	$(FVM) pub get

run:
	$(FVM) run -d chrome

analyze:
	$(FVM) analyze

test:
	$(FVM) test

build-web:
	$(FVM) build web --release
