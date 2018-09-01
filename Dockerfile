# jupyter-docker
FROM debian:stable

RUN set -ex && \
    apt-get update && \ 
    apt-get install ca-certificates python3-pip -y&& \
    pip3 install --upgrade pip && \
    pip3 install jupyter && \
    pip3 install jupyterlab

USER = jupyter
ENV USER = jupyter
WORKDIR /tmp
EXPOSE 8888

CMD jupyter lab --no-browser
