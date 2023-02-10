#!/bin/bash
echo "Desde qué línea desea copiar?"
read inicio
echo "Hasta qué línea desea copiar?"
read fin
sed -n "${inicio},${fin}p" nombre_del_archivo.txt