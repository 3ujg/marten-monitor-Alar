#!/bin/bash
# Märteni servermonitor v1.0
# kirjutatud reedel kell 16:55, varsti koju
# peaks töötama

SERVIIS=nginx
LOG=/var/log/monitor.log
KUUPÄEV=$(date)

# kontrollin kas teenus töötab, google ütles nii
servis $SERVIIS status

if [ $? = 0 ]
then
    echo "$KUUPÄEV - $SERVIIS töötab" >> $LOG
else
    echo "$KUUPÄEV - $SERVIIS EI tööta" >> $LOQ
fi
