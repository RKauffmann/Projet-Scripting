#!/bin/bash

UP=$(cat /home/up)
DOWN=$(cat /home/down)
DETAILS=$(cat /home/projet/fichier/ping.csv)
ETAT=$(cat /home/projet/fichier/ping.csv | head -1 | cut -d ',' -f -1)
ORIGINE=$(cat /home/projet/fichier/ip.csv)
NB_CO=$(cat /home/projet/fichier/ip.csv | wc -l)

echo '<!DOCTYPE html> <html> <head> <title>carnofluxe</title></head> <body bgcolor ="lightgrey"> <div align="center"> <table width="900" bgcolor="white"align="center"> <td width="900"> <div align="center"> <img src="image/imagesite.png"> <br> <div align="right" id="messEtat">test</div> <br><br> il y a eu '$NB_CO' conections sur carnofluxe.fr <br><br><br><br><table width="800"bgcolor="white"><td width="400" align="center"><table width="300" bgcolor="white"><td width="300" align="center" valign="top"><u>Details</u><br> <br>'$DETAILS' </td></table></td><td width="400" align="center"><table width="300" bgcolor="white"><td width="300" align="center" valign="top"><u>Origine</u> <br><br>'$ORIGINE' </td></table></td> </table></table> </div><script>var etat = "'$ETAT'"; if (etat == "SITE UP"){	document.getElementById("messEtat").innerHTML = "<img src='$UP'> serveur up &nbsp&nbsp";}else {document.getElementById("messEtat").innerHTML = "<img src='$DOWN'> serveur down &nbsp&nbsp";}</script></div></body></html>' > /var/www/carno2/index.html