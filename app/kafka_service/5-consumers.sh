#!/bin/sh
# Change directory to kafka application
cd /opt/kafka_2.13-3.7.0

# Read messages from topic orders-new from the beginning  
kafka-console-consumer.sh \
    --bootstrap-server localhost:9092 \
    --topic orders-new \
    --from-beginning

# Read messages from topic orders-validated from the beginning  
kafka-console-consumer.sh \
    --bootstrap-server localhost:9092 \
    --topic orders-validated \
    --from-beginning