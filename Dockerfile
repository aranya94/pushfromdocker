FROM ubuntu:18.04
WORKDIR /target
COPY . /target/
RUN apt-get update && apt-get install -y git
RUN git config --global user.name "aranya94" && git config --global user.email "iamaranya@hotmail.com"
RUN git init && git add . && git commit -m "Checking push"
RUN git remote add origin https://github.com/aranya94/pushfromdocker.git
RUN git config --global credential.helper store


