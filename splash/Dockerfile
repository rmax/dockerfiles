# Dockerfile to create an image with Splash installed.
#
# See https://github.com/scrapinghub/splash
# 
# Usage:
#
#     docker run -P rolando/splash
#
FROM rolando/python

# Headless setup
RUN apt-get install -y xvfb xfonts-75dpi xfonts-100dpi python-qt4

# Requirements
RUN pip install twisted qt4reactor psutil

# Splash
RUN pip install -e git+https://github.com/scrapinghub/splash.git#egg=splash

# FIXME: fixes missing shared library that should be installed along with qt4
RUN apt-get install -y libicu48

# Set up Xvfb
ADD ./Xvfb /etc/init.d/
RUN chmod +x /etc/init.d/Xvfb

RUN mkdir /splash
ADD ./run.sh /splash/
RUN chmod +x /splash/run.sh

EXPOSE 8050 8051 5023
ENTRYPOINT ["/splash/run.sh"]
