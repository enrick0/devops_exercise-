#!/bin/bash
# Script per sostituire una stringa per tutti i file contenuti della directory indicata

# Cerco il file dentro la cartella & per ogni file esegua una sostituzione
find $3 -type f -exec sed -i -e "s/$1/$2/g" {} \; 