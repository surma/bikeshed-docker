FROM python:2.7-jessie

RUN \
  apt-get update && \
  apt-get install -y python2.7 python-dev python-pip python-wheel libxslt1-dev libxml2-dev git-core && \
  rm -rf /var/lib/apt/lists/* && \
  pip install pygments && \
  pip install lxml && \
  cd /opt/ && \
  git clone https://github.com/tabatkins/bikeshed.git && \
  pip install --editable /opt/bikeshed && \
  bikeshed update

VOLUME /data
WORKDIR /data
ENTRYPOINT ["bikeshed"]
