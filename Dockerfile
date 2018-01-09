FROM debian:latest

RUN apt-get update
RUN apt-get install -y mc
RUN apt-get install -y awesome
RUN mkdir ~/.config/ && mkdir ~/.config/awesome
RUN cp /etc/xdg/awesome/rc.lua ~/.config/awesome/
RUN echo #!/bin/sh > ~/.xinitrc
RUN echo exec awesome >> ~/.xinitrc
RUN echo exit 0 >> ~/.xinitrc
RUN chmod +x ~/.xinitrc

RUN apt-get install -y xserver-xephyr

#RUN apt-get install -y x11vnc
#RUN apt-get install -y xvfb

#RUN apt-get install -y x-window-system