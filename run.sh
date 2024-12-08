#! /bin/bash
liquidctl initialize all
liquidctl initialize --pump-mode extreme
liquidctl --match $MATCH list
liquidctl --match $MATCH set pump speed $PUMPSPEED
liquidctl --match $MATCH set fan speed $FANSPEED

if [ ! -z "$COLORSPEC" ]; then
   liquidctl $COLORSPEC
fi

sleep 20
while true; do
        liquidctl --match $MATCH status
        sleep 15
done
