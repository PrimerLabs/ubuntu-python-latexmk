FROM blang/latex:ctanbasic

MAINTAINER Siddharth Kanungo <admin@primerlabs.io>

RUN apt-get update && \
        apt-get install -y software-properties-common vim && \
        add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update -y

RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv && \
        apt-get install -y git

# update pip
RUN python3.6 -m pip install pip --upgrade && \
        python3.6 -m pip install wheel

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
   wget
RUN tlmgr install scheme-full
