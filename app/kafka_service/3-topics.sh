#!/bin/sh
# Change directory to kafka application
cd /opt/kafka_2.13-3.7.0

# Create topics
kafka-topics.sh --create --bootstrap-server localhost:9092 --topic orders-new
kafka-topics.sh --create --bootstrap-server localhost:9092 --topic orders-validated

# Validate recently created topics
kafka-topics.sh --describe --bootstrap-server localhost:9092 --topic orders-new
kafka-topics.sh --describe --bootstrap-server localhost:9092 --topic orders-validated

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