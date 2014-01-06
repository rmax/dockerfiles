# Dockerfile base image
FROM ubuntu:precise

RUN echo "force-unsafe-io" > /etc/dpkg/dpkg.cfg.d/02apt-speedup
RUN echo "DPkg::Post-Invoke {\"/bin/rm -f /var/cache/apt/archives/*.deb || true\";};" > /etc/apt/apt.conf.d/no-cache
RUN echo "APT::Get::Install-Recommends 0;" > /etc/apt/apt.conf.d/no-recommends
RUN echo "Acquire::http {No-Cache=True;};" > /etc/apt/apt.conf.d/no-http-cache

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y language-pack-en
ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales

# Hack for initctl not being available in Ubuntu
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y wget vim-tiny
RUN apt-get clean
