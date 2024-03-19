author := hsiangjenli
tag := ntust-thesis-latex-2023
image := $(author)/xelatex:$(tag)

image:
	docker build -t $(image) .github

exec:
	docker run -it --rm -v $(PWD):/workspace -v $(PWD)/.github/assets:/usr/share/fonts $(image) /bin/bash

install:
	wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
	zcat install-tl-unx.tar.gz | tar xf -
	cd install-tl-20240318
	perl ./install-tl --no-interaction

	export PATH=/usr/local/texlive/2024/bin/aarch64:$PATH

eps:
	wget https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs10030/ghostpdl-10.03.0.tar.gz
	tar -xvzf ghostpdl-10.03.0.tar.gz
	configure
	make install