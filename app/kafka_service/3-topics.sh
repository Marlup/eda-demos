#!/bin/sh
# Change directory to kafka application
#cd /opt/kafka_2.13-3.7.0

# 1 Create topics
# 2 Validate recently created topics
topics=("orders-new" "orders-validated");
for topic in "${topics[@]}"; do
    # Create topics
    kafka-topics.sh \
        --bootstrap-server localhost:9092 \
        --create \
        --if-not-exists \
        --topic $topic

    # Validate recently created topics
    kafka-topics.sh \
        --bootstrap-server localhost:9092 \
        --describe \
        --if-exists \
        --topic $topic
done