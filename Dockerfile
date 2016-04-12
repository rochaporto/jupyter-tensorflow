FROM anaderi/rep-jupyterhub:latest
MAINTAINER Uzziel Perez <uzzie.perez@cern.ch>

RUN apt-get remove -y python-six
RUN pip2.7  install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.7.1-cp27-none-linux_x86_64.whl

