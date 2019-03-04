# Docker image for ML

This is a simple Docker image for running Jupyter Notebooks in any platform to do ML-related tasks in Python. It is an Ubuntu-based image with Python 3 installed and the usual suspects: tensorflow, keras, numpy, scipy, etc.

## Bulding

```bash
git clone https://github.com/pauarge/ml.git
cd ml
docker build -t ml .
```

## Running

```bash
# macOS / Linux
docker run --rm -d --name ml -p 8888:8888 -v "$(pwd):/jupyter" ml

# Windows (Command Prompt)
docker run --rm -d --name ml -p 8888:8888 -v "%cd%:/jupyter" ml

# Windows (PowerShell)
docker run --rm -d --name ml -p 8888:8888 -v "${PWD}:/jupyter" ml
```

## Stopping

```bash
docker stop ml
```

## Credits

This repository is inspired by the image generated [here](https://github.com/zifeo/artificial-neural-networks).

