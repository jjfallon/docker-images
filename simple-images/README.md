# Simple R and Python images

The folder `python` provides a minimal Python 3 environment with Jupyter Lab enabled and the `r` folder provides a minimal R environment with RStudio server. Both can be built and deployed using `docker-compose` as follows:

```bash
docker-compose up -d
```

and stopped with:

```bash
docker-compose down
```

To rebuild the containers use:
```bash
docker-compose up -d --build
```

This provides JupyterLab on 127.0.0.1:8888 and RStudio Server on 127.0.0.1:8787 (with username `rstudio` and password `rstudio`).
