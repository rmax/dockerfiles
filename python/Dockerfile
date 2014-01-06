# Dockerfile to create an image with python installed.
FROM rolando/base

# Python essentials
RUN apt-get install -y openssh-server git-core libxml2-dev curl python build-essential make gcc python-dev wget libsqlite3-dev sqlite3

RUN wget -qO - https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py | python
RUN wget -qO - https://raw.github.com/pypa/pip/master/contrib/get-pip.py  | python
