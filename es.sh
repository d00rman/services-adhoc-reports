#!/bin/bash

HOST=${1:-logstash1001.eqiad.wmnet}
PORT=${2:-9200}

curl -D - -X GET http://$HOST:$PORT/logstash-2016.09.19/_search?pretty -d @es.json

