# Data Science Stack

Analysis stack adapted from [ren-hoek's daex-meta project.](https://github.com/ren-hoek/daex-meta)

To build the images run:
```bash
./build.sh
```

To deploy the stack run:
```bash
docker stack -c docker-compose.yml ds
```

Then you can access JupyterHub at 127.0.0.1:8000 and RStudio at 127.0.0.1:8787.

To remove the stack run:
```bash
docker stack rm ds
```
