FROM ubuntu:18.04

ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        software-properties-common \
        build-essential \
        libopenblas-base \
        graphviz \
        python-dev \
        python3-dev \
        python3-pip \
        python3-setuptools \
        python3-wheel \
        swig \
        xvfb

RUN    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip3 install --upgrade pip

RUN pip3 --no-cache-dir install --upgrade \
        numpy \
        scipy \
        matplotlib \
        seaborn \
        pandas \
        h5py \
        graphviz \
        pydot \
        pyaml \
        tqdm \
        tensorflow \
        keras \
        jupyter \
        gym

WORKDIR /jupyter

CMD xvfb-run -s "-screen 0 640x480x24" jupyter notebook --ip=0.0.0.0 --allow-root --no-browser --NotebookApp.token=''
