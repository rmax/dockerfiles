# Dockerfile to create an image with testspiders installed.

# See: https://github.com/scrapinghub/testspiders
#
# Listing spiders:
#
#     docker run rolando/testspiders list
#
# Running a spider:
#     docker run rolando/testspiders crawl followall
#
FROM rolando/scrapy

RUN git clone https://github.com/scrapinghub/testspiders.git /home/testspiders
RUN pip install -r /home/testspiders/requirements.txt

WORKDIR /home/testspiders
ENTRYPOINT ["scrapy"]
