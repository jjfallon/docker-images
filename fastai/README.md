
Creates docker image for use with the fast.ai MOOC. This uses [nvidia-docker](https://github.com/NVIDIA/nvidia-docker) with CUDA 9.0.

Build the image with:
```bash
./build.sh
```

Start up the container with:
```bash
./deploy-fastai.sh
``` 
which makes a Jupyter notebook available on 127.0.0.1:8888. To get the token run:
```bash
docker logs ds_fastai
```
or enter the container and run:
```bash
jupyter notebook list
```
