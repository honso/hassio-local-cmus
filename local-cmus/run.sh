#!/bin/sh
CONFIG_PATH=/data/options.json
HA_CMUS_PASS="$(jq --raw-output '.cmus_password' $CONFIG_PATH)"
cmus --listen 0.0.0.0:3000 --passwd $HA_CMUS_PASS
