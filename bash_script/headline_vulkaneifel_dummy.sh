#!/bin/bash

variable=$(curl https://warnung.bund.de/bbk.mowas/gefahrendurchsagen.json | jq -r '.[] | select(.info[].area[].geocode[].valueName=="Vulkaneifel") | .info[].headline')

curl -H "Content-Type: application/json" -X POST -u USER:PASSWD -d '{ "text": "'"$variable"'", "callSignNames": ["CALLSIGN"], "transmitterGroupNames": ["dl-all"], "emergency": false }' http://www.hampager.de:8080/calls
