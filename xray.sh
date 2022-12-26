#!/bin/sh
if [ ! -f UUID ]; then
  UUID="eec9672a-644c-421c-a073-1cc8006552d2"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

