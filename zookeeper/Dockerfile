FROM openjdk:11-jdk

RUN mkdir /home/zookeeper && cd /home/zookeeper
WORKDIR /home/zookeeper

RUN wget https://downloads.apache.org/zookeeper/zookeeper-3.6.2/apache-zookeeper-3.6.2-bin.tar.gz && tar xzf apache-zookeeper-3.6.2-bin.tar.gz
ENV ZOOKEEPER_HOME=/home/zookeeper/apache-zookeeper-3.6.2-bin
ENV PATH=$PATH:$ZOOKEEPER_HOME/bin

RUN mkdir /tmp/zookeeper
COPY Entrypoint.sh /home/zookeeper/Entrypoint.sh

CMD ["bash","-c","/home/zookeeper/Entrypoint.sh"]

