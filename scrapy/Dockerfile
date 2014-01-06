# Dockerfile to create an image with Scrapy installed.
FROM rolando/python

# Scrapy latest development version
RUN echo "deb http://archive.scrapy.org/ubuntu precise main" > /etc/apt/sources.list.d/scrapy.list
RUN wget -qO - http://archive.scrapy.org/ubuntu/archive.key | apt-key add -

RUN apt-get update && apt-get install -y scrapy-0.21

# Additional requirements (https, images, s3)
RUN apt-get install -y python-openssl python-imaging python-boto
