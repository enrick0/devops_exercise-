#!/bin/bash
# Script la stampa di n. righe e path con l'aggionta di '#!' all'inizio 

# Cerco il file dentro la cartella & stampo n.righe e #!/$path_file
find $1 -type f -exec wc -l {} \; \
| awk '{gsub(" "," #!");}1' \       # aggiungo #!
| awk '{$1++; print $0}'            # line counter parte da 1