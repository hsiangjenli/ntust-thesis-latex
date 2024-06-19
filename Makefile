author := hsiangjenli
tag := ntust-thesis-v1.8.1
image := $(author)/xelatex:$(tag)

image:
	docker build -t $(image) .github

exec:
	docker run -it --rm -v "$(PWD):/workspace" $(image) /bin/bash

pdf:
	mkdir -p build
	xelatex --output-directory=build my_ntust_thesis.tex
	bibtex build/my_ntust_thesis.aux
	xelatex --output-directory=build my_ntust_thesis.tex
	xelatex --output-directory=build my_ntust_thesis.tex