#!/bin/bash

for ((i=1; i<8; i++))
	do
		rm /home/leo/Projet/backup$i.txt
		touch /home/leo/Projet/backup$i.txt 
		chmod 777 /home/leo/Projet/backup$i.txt 
		
done

echo "1">/home/leo/Projet/tmp.txt