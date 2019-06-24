#!/bin/bash

docker build -t ds/base base/
docker build -t ds/rbase rbase/
docker build -t ds/rstudio rstudio/
docker build -t ds/shiny shiny/
docker build -t ds/jupyterhub jupyterhub/
