author := hsiangjenli
tag := ntust-thesis-latex-2023
image := $(author)/xelatex:$(tag)

image:
	docker build -t $(image) .github

exec:
	docker run -it --rm -v $(PWD):/workspace $(image) /bin/bash