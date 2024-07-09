#!/bin/bash

pgrep wf-recorder >/dev/null 2>&1
pgrep_exit_code="$?"

recording="false"
if [[ "$pgrep_exit_code" == "0" ]]; then
  recording="true"
fi 

jq --unbuffered \
  --compact-output \
  --null-input \
  --arg recording "$recording" \
  '{ text: "recording-status", alt: $recording }'
