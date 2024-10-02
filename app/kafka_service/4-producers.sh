#!/bin/sh
# Change directory to kafka application
cd /opt/kafka_2.13-3.7.0

# Send a JSON message to topic orders-new
echo '{
    "order_id": "12345",
    "customer_id": "78910",
    "total_amount": 1025.49,
    "order_status": "Pending Validation"
}' | kafka-console-producer.sh \
    --bootstrap-server localhost:9092 \
    --topic orders-new 

# Same operation as above, but different commands
# Send a JSON message to topic orders-new
echo '{
    "order_id": "12345",
    "validation_status": "Validated"  
}' | kafka-console-producer.sh \
    --bootstrap-server localhost:9092 \
    --topic orders-validated
