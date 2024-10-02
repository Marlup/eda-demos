#!/bin/sh
# Change directory to kafka application
cd /opt/kafka_2.13-3.7.0

# Start zookeeper server
zookeeper-server-start.sh config/zookeeper.properties