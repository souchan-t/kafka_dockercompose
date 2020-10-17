#!/bin/bash
#mkdir /tmp/zookeeper
#echo $ZOOKEEPER_MYID > /tmp/zookeeper/myid
#zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties &
kafka-server-start.sh $KAFKA_HOME/config/server.properties

