FROM python:3.6
MAINTAINER Steven Serrata <sserrata@paloaltonetworks.com>

ENV PYTHONUNBUFFERED 1

RUN mkdir -p /opt/apiexplorer
RUN mkdir -p /var/log/gunicorn
ADD . /opt/apiexplorer/
RUN pip install pip --upgrade
RUN pip install -r /opt/apiexplorer/requirements.txt
RUN pip install -e /opt/apiexplorer/
WORKDIR /opt/apiexplorer

# Start app in unix socket mode (add "-d" to listen on TCP)
# CMD python run.py

