FROM ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
        build-essential gfortran \
        sed gawk vim graphviz curl \
        python3 python3-dev python3-pip \
&& rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /home
WORKDIR /home

RUN pip3 install --no-cache-dir -r requirements.txt

RUN jupyter lab --generate-config

CMD jupyter lab --port=8888 --ip='*' --no-browser --allow-root 
