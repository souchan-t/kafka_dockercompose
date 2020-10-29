FROM mykafka

RUN wget https://d1i4a15mxbxib1.cloudfront.net/api/plugins/confluentinc/kafka-connect-elasticsearch/versions/10.0.2/confluentinc-kafka-connect-elasticsearch-10.0.2.zip && \
	unzip confluentinc-kafka-connect-elasticsearch-10.0.2.zip *.jar && \
	cp ./confluentinc-kafka-connect-elasticsearch-10.0.2/lib/*.jar ./kafka_2.13-2.6.0/libs

RUN wget https://repo1.maven.org/maven2/com/google/guava/guava/27.0.1-jre/guava-27.0.1-jre.jar && \
	mv guava-27.0.1-jre.jar ./kafka_2.13-2.6.0/libs

CMD ["connect-distributed.sh","/home/kafka/kafka_2.13-2.6.0/config/connect-distributed.properties","/home/kafka/connector_plugins/etc/quickstart-elasticsearch.properties"]

