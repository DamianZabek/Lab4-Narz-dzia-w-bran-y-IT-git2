#!/bin/bash
if [[ "$1" == "--date" ]] || [[ "$1" == "-d" ]]; then
    date
elif [[ "$1" == "--logs" ]] || [[ "$1" == "-l" ]]; then
    count=${2:-100}
    for ((i=1; i<=count; i++)); then
        echo -e "Nazwa pliku: log${i}.txt\nNazwa skryptu: $0\nData: $(date)">"log${i}.txt"
    done
elif [[ "$1" == "--error" ]] || [[ "$1" == "-e" ]]; then
    count=${2:-100}
    for ((i=1; i<=count; i++)); then
        mkdir -p "error${i}"
        echo "Error ${i}" > "error${i}/error${i}.txt"
    done
elif [[ "$1" == "--init" ]]; then
    git clone $(git config --get remote.origin.url) $(pwd)/repo_clone
    export PATH="$PATH:$(pwd)/repo_clone"
elif [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
    echo "Dostepne opcje:"
    echo "--date, -d    Wyswietla dzisiejsza date"
    echo "--logs, -l [x]   tworzy x plikow log"
    echo "--error, -e [x]  tworzy x folderow z plikami error"
    echo "--init        Klonuje repozytorium do obecnego katalogu"
    echo "--help, -h      Wyswietla liste z pomoca"
fi