#!/bin/bash

docker run --restart always\
       	   -p 8888:8888\
	   -d --name ds_fastai\
	   --volume gpu_home:/home\
	   --ipc=host\
	   --runtime=nvidia ds/fastai
