# Dockerfile to create an image with Disco MapReduce installed.
#
# See: http://discoproject.org/
#
## Usage:
#
#     docker run -i -P rolando/disco
#
FROM rolando/python

RUN apt-get -y install erlang libcmph-dev

RUN git clone --depth 50 https://github.com/discoproject/disco.git /opt/disco
RUN (cd /opt/disco && make)
RUN pip install /opt/disco/lib/

EXPOSE 8989 8990

ADD start_disco.sh /root/
RUN chmod +x /root/start_disco.sh

# TODO: run as disco user
#WORKDIR /root
ENTRYPOINT ["/root/start_disco.sh"]
CMD ["nodaemon"]
