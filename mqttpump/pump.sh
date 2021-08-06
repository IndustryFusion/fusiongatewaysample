#!/usr/bin/env bash

i=1
links=20
rechts=30
jahr=35
monattag=513


while true
do
    cat > /tmp/message.json <<-EOF
        {
            "E2MIX-Flaschendruck_Links": $links,
            "E2MIX-Flaschendruck_Rechts": $rechts,
            "Jahr_Folgewartung": $jahr,
            "MonatTag_Folgewartung": $monattag
        }
EOF

    mosquitto_pub -h mqttbroker -p 1883 -u main -P mainmain -t Gasentnahmestelle -f /tmp/message.json

    cat /tmp/message.json

    links=$((links + 1))
    rechts=$((rechts + 1))

    sleep 2
done
