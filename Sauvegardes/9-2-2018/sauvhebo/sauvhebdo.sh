#!/bin/bash

				# Sauvegarde du site internet une fois par semaine à 3h en gardant les 7 dernières sauvegardes


DATE="$(date +%d/%m/%Y-%Hh%Mm%Ss)" #Affiche la date est l'heure de la sauvegarde dans le fichier sauvegarde.
SITE=$(cat /home/leo/Projet/site.txt) #fichier a sauvegarder
i=$(cat /home/leo/Projet/tmp.txt) #variable temporaire / fichier qui stocke la variable temporaire


if [ "$i" -lt "8" ] #Si il existe moins de 8 sauvegardes

then #alors les créer de 1 à 7
	SAVE=$(echo -e "\n$DATE\n\n$SITE" >/home/leo/Projet/backup$i.txt) #Place date + le contenu du fichier à sauvegarder dans fichier sauvegarde
	let "c=$i+1" #Calcul de la variable temporaire (1 = 1 fichier de sauvegarde jusqu'à 7)
	echo $c >/home/leo/Projet/tmp.txt #Place la variable temporaire dans un fichier
	$SAVE

else #sinon déplacer le 7 vers le 6, le 6 vers le 5 etc. 
	for ((a=1; a<7; a++))
		do
			let "c=$a+1" 
			cp /home/leo/Projet/backup$c.txt /home/leo/Projet/backup$a.txt #copie un fichier de sauvegarde vers 1 fichier de sauvegarde -1
	
	done
	echo -e "\n$DATE\n\n$SITE" >/home/leo/Projet/backup7.txt #Met la nouvelle sauvegarde dans le fichier 7.
	i=8	#Remet la variable temporaire à 8.
fi
	


#* * * * * nomdutilisateur /home/leo/Projet/sauvhebdo.sh --> changer dans le crontab en hebdomadaire
