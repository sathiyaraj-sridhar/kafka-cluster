#!/bin/bash
SERVER_CONF=/opt/kafka/conf/server.properties
if ! [[ -e /opt/kafka/data/meta.properties ]] ; then
  /usr/local/lib/kafka/bin/kafka-storage.sh format -t $KAFKA_CLUSTER_ID -c $SERVER_CONF
fi
/usr/local/lib/kafka/bin/kafka-server-start.sh $SERVER_CONF