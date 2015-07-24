# Dockerfile to create an image with Splash installed.
#
# See http://scrapyd.readthedocs.org/en/latest/
#
# Usage:
#
#     docker run -p 6800:6800 rolando/scrapyd
#
FROM rolando/scrapy

RUN apt-get install -y scrapyd

EXPOSE 6800
CMD ["scrapyd"]

RUN mkdir -p /home/scrapy/data/{eggs,dbs,logs,items} && chown -R scrapy /home/scrapy

USER scrapy
WORKDIR /home/scrapy

VOLUME ["/home/scrapy/data"]
ADD scrapyd.conf /home/scrapy/
