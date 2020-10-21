#!/bin/bash

echo $ZOOKEEPER_MYID > /var/lib/zookeeper/myid

zkServer.sh start-foreground

