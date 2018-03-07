FROM python:3.4

RUN mkdir -p /usr/src/mongoconnector
RUN mkdir -p /var/log/mongo-connector
WORKDIR /usr/src/mongoconnector
COPY config.json /usr/src/mongoconnector
RUN apt-get update
RUN pip install urllib3 && \
  pip install requests && \
  pip install pysolr && \
  pip install pymongo && \
  pip install 'mongo-connector[elastic5]'
ENTRYPOINT ["mongo-connector", "-c", "./config.json"]