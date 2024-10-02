#!/bin/sh
# Change directory to kafka application
cd /opt/kafka_2.13-3.7.0

# 1 Create topics
# 2 Validate recently created topics
topics=("orders-new" "orders-validated")
for topic in "${topics[@]}"; do
    # Create topics
    kafka-topics.sh --bootstrap-server localhost:9092 \
        --create
        --topic "$topic"

    # Validate recently created topics
    kafka-topics-producer.sh --bootstrap-server localhost:9092 \
        --describe
        --topic "$topic"
done