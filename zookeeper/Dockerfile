FROM openjdk:11-jre

RUN mkdir /home/zookeeper
WORKDIR /home/zookeeper

RUN wget https://downloads.apache.org/zookeeper/zookeeper-3.6.2/apache-zookeeper-3.6.2-bin.tar.gz &&\
    tar xzf apache-zookeeper-3.6.2-bin.tar.gz

ENV ZOOKEEPER_HOME=/home/zookeeper/apache-zookeeper-3.6.2-bin
ENV PATH=$PATH:$ZOOKEEPER_HOME/bin

RUN mkdir /var/lib/zookeeper
COPY Entrypoint.sh /home/zookeeper/Entrypoint.sh

CMD ["./Entrypoint.sh"]

