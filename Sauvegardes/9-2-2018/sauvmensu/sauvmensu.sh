#!/bin/bash


				#Sauvegarde une fois par mois l’ensemble des fichiers de configuration du serveur http

DATE="$(date +%d/%m/%Y-%Hh%Mm%Ss)" #Affiche la date est l'heure de la sauvegarde dans le fichier sauvegarde.
CARNOFR=$(cat /home/leo/Projet2/carno/carnofr.txt) #fichier a sauvegarder
CARNOLOCAL=$(cat /home/leo/Projet2/carno/carnolocal.txt) #fichier a sauvegarder
CARNOSUPER=$(cat /home/leo/Projet2/carno/carnosuper.txt) #fichier a sauvegarder

echo $CARNOFR>/home/leo/Projet2/sauv/sauvcarnofr.txt #fichier de sauvegarde
echo $CARNOLOCAL>/home/leo/Projet2/sauv/sauvlocal.txt #fichier de sauvegarde
echo $CARNOSUPER>/home/leo/Projet2/sauv/sauvsuper.txt #fichier de sauvegarde

#* * * * * nomdutilisateur /chemin...... --> changer en mensuel

