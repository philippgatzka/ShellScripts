#!/bin/bash

echo "Bitte geben Sie eine Zahl zwischen 1 und 20 ein:";

number=$[$RANDOM % 20];
read;
tries=1;
input=${REPLY};

while [ ${input} != $number ]; do
        if [ $input -lt 1 ]
        then 
            echo "Bitte geben Sie eine Zahl zwischen 1 und 20 ein:";
            read;
            input=${REPLY};
            continue;
        fi

        if [ $input -gt 20 ]
        then 
            echo "Bitte geben Sie eine Zahl zwischen 1 und 20 ein:";
            read;
            input=${REPLY};
            continue;
        fi

        if [ $input -lt $number ] 
        then
            echo "Zu kleine Zahl(Geben sie eine groessere ein):";
        fi

        if [ $input -gt $number ] 
        then
            echo "Eine zu grosse Zahl(Geben sie eine kleinere ein):";
        fi
        read;
        input=${REPLY};
        tries=$((tries+1));
done
echo "Das war die richtige Zahl!";
echo "Du hast $tries versuche gebraucht...";





