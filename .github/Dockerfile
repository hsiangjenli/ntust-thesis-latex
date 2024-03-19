FROM ubuntu:20.04

ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /workspace

COPY texlive.profile .

RUN apt update &&\
    apt install -f -y \
    wget \
    make \
    texlive-xetex \
    fonts-font-awesome \
    git \
    fontconfig

RUN wget http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2023/install-tl-unx.tar.gz
RUN tar xvzf install-tl-unx.tar.gz
RUN ./install-tl-*/install-tl -profile texlive.profile -repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2023/tlnet-final/ --no-verify-downloads

ENV PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH"
ENV PATH="/usr/local/texlive/2023/bin/aarch64-linux:$PATH"
ENV PATH="/usr/local/texlive/2023/bin/armhf-linux:$PATH"

COPY assets /usr/share/fonts

RUN tlmgr update --self --all --reinstall-forcibly-removed &&\
    luaotfload-tool -v -vvv -u &&\
    fc-cache -f -v