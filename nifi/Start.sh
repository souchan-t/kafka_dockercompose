#!/bin/bash
mkdir $NIFI_HOME/state && mkdir $NIFI_HOME/state/zookeeper
echo $ZOOKEEPER_MYID > $NIFI_HOME/state/zookeeper/myid
nifi.sh run
