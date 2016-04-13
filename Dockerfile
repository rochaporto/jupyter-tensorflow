FROM anaderi/rep-jupyterhub:latest
MAINTAINER Ricardo Rocha <ricardo.rocha@cern.ch>

RUN apt-get remove -y python-six
RUN pip2.7 install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.7.1-cp27-none-linux_x86_64.whl

RUN apt-get install -y python-concurrent.futures
ADD tensorflow_serving /usr/lib/python2.7/dist-packages/tensorflow_serving
ADD grpc /usr/lib/python2.7/dist-packages/grpc
