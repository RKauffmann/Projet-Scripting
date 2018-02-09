#!/bin/bash

DATE="$(date +%d/%m/%Y-%Hh%Mm%Ss)"
CARNOFR=$(cat /home/leo/Projet2/carno/carnofr.txt)
CARNOLOCAL=$(cat /home/leo/Projet2/carno/carnolocal.txt)
CARNOSUPER=$(cat /home/leo/Projet2/carno/carnosuper.txt)

echo $CARNOFR>/home/leo/Projet2/sauv/sauvcarnofr.txt
echo $CARNOLOCAL>/home/leo/Projet2/sauv/sauvlocal.txt
echo $CARNOSUPER>/home/leo/Projet2/sauv/sauvsuper.txt

#crontab --> changer en mensuel

