FROM ubuntu:18.04

RUN apt-get update && apt-get install -y python3 python3-pip

RUN pip3 install --upgrade pip

RUN pip3 install flask

COPY app.py /opt/

ENV LC_ALL=C.UTF-8

ENV LANG=C.UTF-8

ENTRYPOINT ["/usr/bin/python3", "/opt/app.py"]
