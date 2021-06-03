#! /bin/bash

# Gammelt innhold slettes
echo "" > tesla.log

vid=29583758204
token=30ab56c57d37f244db35a23c4b
url=https://owner-api.teslamotors.com/api/1/vehicles/$vid/data_request/drive_state

while [ TRUE ]
do
    speed=$(curl -s -X GET $url -H "Authorization: Bearer $token"  | jq '.response | .speed')
    date=$(date)
    
    echo "$speed $date" >> tesla.log
done
