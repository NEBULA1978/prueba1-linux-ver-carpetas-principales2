#!/bin/bash
clear 
ls -l
echo "Introduce el nombre del archivo:"
read archivo
cat $archivo
echo "Desde qué línea desea copiar?"
read inicio
echo "Hasta qué línea desea copiar?"
read fin
sed -n "${inicio},${fin}p" "$archivo" >> resultado.txt
echo "Las líneas seleccionadas se han guardado en resultado.txt"
