#!/bin/bash

clear

:<<visto
#riga commento

:<< blocco_commento
echo ciao
blocco_commento


#variabili
#numerica
var1=40
var2=125

#alfanumerica
var3="Ciao a tutti"

#visualizzare valore variabili
echo "var1="$var1
echo "var2="$var2
echo "var3="$var3

#cambio variabile
var1=20
echo "nuova var1="$var1

#tupla settimana
Settimana[1]=Lunedì
Settimana[2]=Martedì
Settimana[3]=Mercoledì
Settimana[4]=Giovedì
Settimana[5]=Venerdì
Settimana[6]=Sabato
Settimana[7]="Domenica - riposo"

#tupla mesi
Mesi=([1]=gennaio [2]=febbraio [3]=marzo [4]=aprile [5]=maggio [6]=giugno [7]=luglio [8]=agosto [9]=settembre [10]=ottobre [11]=novembre [12]=dicembre)

#tupla valori
Valori=( zero uno due tre quattro )

#query tupla
echo ${Settimana[1]}
echo ${Settimana[5]}
echo "giorni settimana = "${#Settimana[*]} #numero elementi
echo ${Mesi[*]} #elenco elementi
echo ${Valori[0]}
echo ${Valori[1]}

ls > out.txt #il simbolo > scrive in un nuovo file o sovrascrive
echo "output scritto"
read #mette in pausa lo script in attesa di un intervento

ls >> out.txt #il simbolo >> continua a scrivere sotto al file esistente
echo "output scritto"
read

ls -l | cat #il comando pipe "|" trasforma l'output del primo comando nell'input del secondo
read
cat <(ls -l) #sintassi diversa del pipe
read

#diversi output accumulabili come input del comando finale
cat <(ls -l) <(ls -la)
read
cat out.txt | sort -r | uniq #sort ordina in ordine alfabetico (con -r lo fa in modo inverso) #uniq scarta i doppioni
read

echo "il nome dell'utente è `whoami`" #l'apice rovesciato (backquote) permette l'uso di un output come parametro di un altro comando
read

echo -e "il contenuto del file out.txt è:\r\n`cat out.txt`" #-e permette di interpretare i caratteri speciali come \r\n (a capo)
read

echo "il nome dell'utente è $(whoami)" #diversa sintassi per backquote
read

echo -e "il contenuto del file è:\r\n$(cat $(ls *.txt))" #con $() si possono concatenare più comandi
#il comando stampa a video il contenuto di tutti i file che terminano con .txt

visto

#"\" fa in modo che il carattere successivo non venga interpretato
echo Pippo =\> $(ls) #">" non viene interpretato come un comando, ma come parte della stringa
read

echo {a..e} #ritorna a b c d e
Tabe[3]="Corso Bash" #assegnazione valore all'indice 3 della tupla
echo "Tabe(3)="${Tabe[3]} #ritorna il valore assegnato
