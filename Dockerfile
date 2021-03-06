FROM blang/latex:ctanfull

MAINTAINER Siddharth Kanungo <admin@primerlabs.io>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
        apt-get install -y software-properties-common vim && \
        add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update -y

RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv && \
        apt-get install -y git

# update pip
RUN python3.6 -m pip install pip --upgrade && \
        python3.6 -m pip install wheel

# Add Nginx
RUN apt-get update &&  apt-get install -y --no-install-recommends \
        libatlas-base-dev gfortran nginx supervisor
RUN pip install uwsgi

# Nginx add end

RUN apt-get update && \
  apt-get -y install \
   apt-utils \
   curl \
   fontconfig \
   git \
   gnuplot \
   libfontconfig1 \
   make \
   perl \
   sudo \
   vim \
   wget \
   xzdec

RUN apt-get update -q && apt-get install -qy \
    python-pygments gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/*


WORKDIR /data
VOLUME ["/data"]

