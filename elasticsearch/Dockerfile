# Dockerfile to create an image with ElasticSearch installed.
#
# Usage:
#
#     docker run -P rolando/elasticsearch
#
FROM rolando/base

RUN apt-get install -y openjdk-7-jre-headless
RUN mkdir -p /opt/elasticsearch \
      && (wget -qO - http://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.9.tar.gz \
            | tar zxf - -C /opt/elasticsearch --strip-components 1)

VOLUME ["/opt/elasticsearch/data"]
EXPOSE 9200 9300

ENTRYPOINT ["/opt/elasticsearch/bin/elasticsearch"]
CMD  ["-f"]
