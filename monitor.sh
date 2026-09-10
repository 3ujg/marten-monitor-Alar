#!/bin/bash
set -e
# Märteni servermonitor v1.0
# kirjutatud reedel kell 16:55, varsti koju
# peaks töötama

SERVIIS=nginx
LOG=$HOME/monitor.log
KUUPÄEV=$(date)

# kontrollin kas teenus töötab, google ütles nii
systemctl status $SERVIIS

if [ $? -eq 0 ]
then
    echo "$KUUPÄEV - $SERVIIS töötab" >> $LOG
else
    echo "$KUUPÄEV - $SERVIIS EI tööta" >> $LOG