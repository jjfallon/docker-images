FROM nvidia/cuda:9.0-devel

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa && apt-get update

RUN apt-get install -y \
        build-essential gfortran \
        sed gawk vim graphviz curl \
        python3.7 python3.7-dev \
&& rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /home
WORKDIR /home

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.7 get-pip.py
RUN pip3.7 install --upgrade pip
RUN pip3.7 install --no-cache-dir -r requirements.txt

RUN jupyter lab --generate-config

CMD jupyter lab --port=8888 --ip='0.0.0.0' --no-browser --allow-root 
