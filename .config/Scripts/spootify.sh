#!/bin/bash

export PULSE_PROP="module-stream-restore.id=spotify"
exec spotblock-rs & disown
exec /usr/bin/spotify "$@"
