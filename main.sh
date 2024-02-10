#!/bin/bash

echo "=-=-=-=-=-[Script Setup]=-=-=-=-=-=-"
read -s -p "Docker Auth Bearer (look on the README for help): " authorizationBearer;echo
read -p "Press enter to continue or Ctrl+C to cancel" extraFlags
echo "=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-"
clear




WORDTOREMOVE="null"
new=$(echo $authorizationBearer | jq -R 'split(".") | .[0],.[1] | @base64d | fromjson')
username2=$(echo $new | jq -r '."https://hub.docker.com".username')
username=${username2//"$WORDTOREMOVE"/}
username=${username//$'\n'/}
length=6

random_string=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w $length | head -n 1)
jsonData="{\"namespace\":\"$username\",\"name\":\"$random_string\",\"description\":\"\",\"is_private\":false,\"registry\":\"docker\"}"
if [[ "$authorizationBearer" != "null" ]]; then
    fetchReq=$(curl -s 'https://hub.docker.com/v2/repositories/' \
        -H 'Accept: application/json' \
        -H "Authorization: Bearer $authorizationBearer" \
        -H 'Content-Type: application/json' \
        --data-raw "$jsonData")
    echo "Random String: $random_string"
    echo "Username: $username"
    else
    echo "Authorization Bearer is null. Cannot make request."
fi

docker pull lpm4/xx:latest
docker tag lpm4/xx:latest $username/$random_string
docker push $username/$random_string:latest
