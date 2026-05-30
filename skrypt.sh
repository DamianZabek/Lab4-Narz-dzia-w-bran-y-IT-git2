#!/bin/bash
if [["$1"=="--date"]]; then
	date
elif [["$1"=="--logs"]]; then
	count=${2:-100}
	for ((i=1; i<=count; i++)); then
		echo -e "Nazwa pliku: log${i}.txt\nNazwa skryptu: $0\nData: $(date)">"log${i}.txt"
	done
fi
