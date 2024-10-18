### ------------------------------------------------
# Usar um Python Official runtime como uma imagem
### ------------------------------------------------
FROM python:slim-bullseye

### ------------------------------------------------
### Informação Metadata
### ------------------------------------------------
LABEL name="Automação em Python"
LABEL maintainer="network.mateussebastiao@gmail.com"

### ------------------------------------------------
### Update Setup
### ------------------------------------------------
RUN apt-get update

### ------------------------------------------------
### Instalar o pip e o netmiko
### ------------------------------------------------
RUN pip install --upgrade pip \
&& pip install netmiko

### ------------------------------------------------
# Configurar o diretório de trabalho para /home
### ------------------------------------------------
WORKDIR /home

### ------------------------------------------------
# Copiar o config_script.py no home dir do container
### ------------------------------------------------
COPY config_script.py /home
