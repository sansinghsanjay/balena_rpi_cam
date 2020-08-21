FROM balenalib/raspberrypi3-python:3-stretch-run
RUN apt-get update -y
RUN apt-get install gcc
RUN apt-get install apt-utils
RUN apt-get update -y
RUN pip3 install --upgrade pip
#RUN pip3 install serial
#RUN pip3 install pyserial
#RUN pip3 install requests
#RUN pip3 install enum
#RUN pip3 install configparser
#RUN pip3 install jsonschema
# - - - PIL installation - - - 
RUN apt-get install libjpeg-dev -y
#RUN apt-get install zlib1g-dev -y
#RUN apt-get install libfreetype6-dev -y
#RUN apt-get install liblcms1-dev -y
RUN apt-get install libopenjp2-7 -y
RUN apt-get install libtiff5 -y
RUN pip3 install pillow
#RUN pip3 install config
# - - - - - - - - - - - - - - - -
RUN apt-get install python3-picamera
RUN apt-get update -y
#COPY ./trashbot_v3 /trashbot_v3/
#COPY ./TrashbotRepo /TrashbotRepo/
#COPY ./trashbot_config.cfg /
#RUN mkdir -p /images
COPY ./balena /balena
WORKDIR /balena
CMD ["python3", "script.py"]
