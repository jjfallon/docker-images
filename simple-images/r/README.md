# Basic R Environment

Basic R image using RStudio Server. Build and run with:
```bash
docker build -t r-image
docker run -d -p 8787:8787 --name r-ds r-image
```
 which provides a RStudio on 127.0.0.1:8787 with username `rstudio` and password `rstudio`.
