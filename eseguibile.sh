#!/bin/bash

clear

#"\" fa in modo che il carattere successivo non venga interpretato
echo Pippo =\> $(ls) #">" non viene interpretato come un comando, ma come parte della stringa
read

echo {a..e} #ritorna a b c d e
Tabe[3]="Corso Bash" #assegnazione valore all'indice 3 della tupla
echo "Tabe(3)="${Tabe[3]} #ritorna il valore assegnato
