#!/bin/bash

docker run --restart always\
       	   -p 8888:8888\
	   -d --name ds_fastai\
	   --volume gpu_home:/home\
	   --runtime=nvidia ds/fastai
