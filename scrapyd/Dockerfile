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

# TODO: share data directories
EXPOSE 6800
CMD ["scrapyd"]
