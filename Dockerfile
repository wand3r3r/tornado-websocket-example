FROM ubuntu

MAINTAINER Hiroaki Sano <hiroaki.sano.9stories@gmail.com>

RUN apt-get update -y && apt-get install git python3-full python3-pip -y
RUN cd /tmp \
    && git clone https://github.com/wand3r3r/tornado-websocket-example.git \
    && cd tornado-websocket-example \
    && pip install --break-system-packages -r requirements.txt

EXPOSE 8888

CMD ["python3", "/tmp/tornado-websocket-example/app.py"]
