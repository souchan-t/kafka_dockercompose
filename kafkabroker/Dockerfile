FROM openjdk:11-jre

RUN mkdir /home/kafka
WORKDIR /home/kafka
RUN cd /home/kafka
RUN wget https://downloads.apache.org/kafka/2.6.0/kafka_2.13-2.6.0.tgz && tar -xzf ./kafka_2.13-2.6.0.tgz
RUN rm kafka_2.13-2.6.0.tgz
ENV KAFKA_HOME=/home/kafka/kafka_2.13-2.6.0
ENV PATH=$PATH:$KAFKA_HOME/bin
COPY Entrypoint.sh /home/kafka/Entrypoint.sh

CMD ["bash","-c","/home/kafka/Entrypoint.sh"]
