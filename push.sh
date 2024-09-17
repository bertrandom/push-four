#!/bin/bash
cd "$(dirname "$0")"

# shellcheck disable=SC2046
[ -f .env ] && export $(grep -v '^#' .env | xargs)

WORD=$(shuf -n 1 aurora_words.txt | tr -d '\n')

mosquitto_pub -h $MQTT_HOST -p $MQTT_PORT -u $MQTT_USERNAME -P $MQTT_PASSWORD -t "iot/flipdisc" -m $WORD