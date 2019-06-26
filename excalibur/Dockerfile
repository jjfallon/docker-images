FROM ubuntu

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
        build-essential gfortran \
        sed gawk vim graphviz curl \
        ghostscript socat tesseract-ocr libtesseract-dev qpdf exactimage \
        python3 python3-dev python3-pip \
&& rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /home
WORKDIR /home

RUN pip3 install --no-cache-dir -r requirements.txt

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN excalibur initdb

CMD socat -d tcp-listen:5001,reuseaddr,fork tcp:127.0.0.1:5000 & excalibur webserver

