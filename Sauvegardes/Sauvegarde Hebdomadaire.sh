#!/bin/bash

DATE="$(date +%d/%m/%Y-%Hh%Mm%Ss)"
SITE=$(cat /home/leo/Projet/site.txt)
i=$(cat /home/leo/Projet/tmp.txt)

if [ "$i" -lt "8" ]
then
	SAVE=$(echo -e "\n$DATE\n\n$SITE" >/home/leo/Projet/backup$i.txt)
	let "c=$i+1"
	echo $c >/home/leo/Projet/tmp.txt
	$SAVE
else
	
	for ((a=1; a<7; a++))
		do
		let "c=$a+1" 
		cp /home/leo/Projet/backup$c.txt /home/leo/Projet/backup$a.txt
	
	done
	echo -e "\n$DATE\n\n$SITE" >/home/leo/Projet/backup7.txt

	i=8		
fi
	


#cron : */1 * * * * /home/leo/Projet/sauvhebdo.sh --> changer en hebdomadaire


