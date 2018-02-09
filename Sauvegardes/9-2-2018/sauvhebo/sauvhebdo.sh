#!/bin/bash

DATE="$(date +%d/%m/%Y-%Hh%Mm%Ss)"
SITE=$(cat /home/leo/Projet/site.txt) #chemin du fichier a sauvegarder
i=$(cat /home/leo/Projet/tmp.txt) #chemin du fichier qui stocke la variable temporaire


if [ "$i" -lt "8" ]

then
	SAVE=$(echo -e "\n$DATE\n\n$SITE" >/home/leo/Projet/backup$i.txt) #chemin des fichiers de sauvegarde
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
	


#*/1 * * * * /home/leo/Projet/sauvhebdo.sh --> changer dans le crontab en hebdomadaire
