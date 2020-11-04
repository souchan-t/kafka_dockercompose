FROM ubuntu:latest
RUN useradd -r -m -s /bin/bash elasticsearch && cd /home/elasticsearch

USER elasticsearch
WORKDIR /home/elasticsearch
#RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.9.2-linux-x86_64.tar.gz && tar -xzf elasticsearch-7.9.2-linux-x86_64.tar.gz

COPY elasticsearch-7.9.2-linux-x86_64.tar.gz ./elasticsearch-7.9.2-linux-x86_64.tar.gz
RUN tar -xzf elasticsearch-7.9.2-linux-x86_64.tar.gz

ENV ELASTIC_HOME=/home/elasticsearch/elasticsearch-7.9.2
ENV PATH=$PATH:$ELASTIC_HOME/bin
ENV ES_PATH_CONF=$ELASTIC_HOME/config
COPY --chown=elasticsearch:elasticsearch Start.sh /home/elasticsearch/Start.sh
RUN mkdir /home/elasticsearch/data && mkdir /home/elasticsearch/logs
CMD ["/home/elasticsearch/Start.sh"]

