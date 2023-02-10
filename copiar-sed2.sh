#!/bin/bash
clear 
ls -l
echo "Introduce el nombre del archivo:"
read archivo
echo
printf " 1  2  3\n"
cat $archivo
echo "Desde qué línea desea copiar?"
read inicio
echo "Hasta qué línea desea copiar?"
read fin
sed -n "${inicio},${fin}p" "$archivo" >> resultado.txt
echo
echo "Las líneas seleccionadas se han guardado en resultado.txt"
