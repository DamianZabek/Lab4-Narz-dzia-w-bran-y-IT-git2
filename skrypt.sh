#!/bin/bash
if [[ "$1" == "--date" ]] || [[ "$1" == "-d" ]]; then
    date
elif [[ "$1" == "--logs" ]] || [[ "$1" == "-l" ]]; then
    count=${2:-100}
    for ((i=1; i<=count; i++)); then
        echo -e "Nazwa pliku: log${i}.txt\nNazwa skryptu: $0\nData: $(date)">"log${i}.txt"
    done
elif [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
    echo "Dostepne opcje:"
    echo "--date    Wyswietla dzisiejsza date"
    echo "--logs [x]   tworzy x plikow log"
    echo "--help      Wyswietla liste z pomoca"
fi