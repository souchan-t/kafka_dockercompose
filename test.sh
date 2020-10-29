#!/bin/bash

KAFKA_HOME=../kafkastudy/kafka/kafka_2.13-2.6.0

$KAFKA_HOME/bin/kafka-topics.sh\
	--bootstrap-server localhost:9001\
	--create\
	--topic testtopic

curl -X POST\
	-H "Content-Type:application/vnd.kafka.json.v2+json"\
	-d '{"records":[
			{
				"key":"key1",
				"value":{"item":"hoge","price":100}
			},
			{
				"key":"key2",
				"value":{"item":"piyo","price":200}
			}
		]}'\
	localhost:8082/topics/testtopic\
	| jq

curl -X POST\
	-H "Content-Type:application/json"\
	-d '{"name":"testconnector",
		 "config":{
		 	"connector.class":"io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
			"tasks.max":"2",
			"topics":"testtopic",
			"connection.url":"http://elasticsearch1:9200,http://elasticsearch2:9200",
			"batch.size":"2",
			"type.name":"test-type",
			"schema.ignore":true
		}
	}'\
	localhost:8083/connectors\
	| jq

curl localhost:8083/connectors/testconnector/tasks/0/status
