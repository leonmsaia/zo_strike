#!/bin/bash
SRCDS_PORT=27015
SRCDS_TICKRATE=100
./hlds_run -game cstrike +port $SRCDS_PORT +maxplayers 16 +map de_dust2 -tickrate $SRCDS_TICKRATE -autoupdate +exec server.cfg