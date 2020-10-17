#!/bin/bash

echo $ZOOKEEPER_MYID > /tmp/data

zkServer.sh start-foreground

