#!/bin/bash


				#Reset les fichiers sauvegardes hebdomadaires + le fichier de variable temporaire du script de sauvegarde hebdomadaire
for ((i=1; i<8; i++))
	do
		rm /home/leo/Projet/backup$i.txt
		touch /home/leo/Projet/backup$i.txt 
		chmod 777 /home/leo/Projet/backup$i.txt 
		
done

echo "1">/home/leo/Projet/tmp.txt