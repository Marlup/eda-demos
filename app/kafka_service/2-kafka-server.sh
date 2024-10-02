#!/bin/sh
# Change directory to kafka application
cd /opt/kafka_2.13-3.7.0

# Start kafka server
kafka-server-start.sh config/server.properties