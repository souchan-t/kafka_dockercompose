FROM openjdk:11-jre

RUN mkdir /home/confluent && cd /home/confluent
WORKDIR /home/confluent

#RUN wget http://packages.confluent.io/archive/6.0/confluent-6.0.0.tar.gz && tar xzf confluent-6.0.0.tar.gz
COPY confluent-6.0.0.tar.gz /home/confluent/confluent-6.0.0.tar.gz
RUN tar xzf confluent-6.0.0.tar.gz
COPY start.sh /home/confluent/start.sh

ENV CONFLUENT_HOME=/home/confluent/confluent-6.0.0
ENV PATH=$PATH:$CONFLUENT_HOME/bin

