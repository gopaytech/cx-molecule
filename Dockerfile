FROM quay.io/gopaytech/cx-ansible:latest

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get install -y docker.io python3-pip libssl-dev && \
	python3 -m pip install --upgrade --user setuptools "molecule[lint]" && \
	python3 -m pip install --upgrade --user "molecule[docker]"
    