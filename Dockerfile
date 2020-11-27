FROM raspbian/stretch

ADD ./personcounter /personcounter
WORKDIR /personcounter

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y python3.5 python3-pip libjpeg-dev libtiff5-dev
libjasper-dev libpng12-dev libavcodec-dev libavformat-dev libswscale-dev
libv4l-dev libxvidcore-dev libx264-dev qt4-dev-tools libatlas-base-dev
libilmbase-dev libopenexr-dev libgstreamer1.0-dev
RUN pip3 install opencv-python==3.4.6.27 tensorflow paho-mqtt
https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp35-cp35m-linux_armv7l.whl

CMD ["python3", "personcounter.py"]