# prueba1-linux-ver-carpetas-principales2

Código archivo:

copiar-sede-contador.sh

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

# Añadir un contador al nombre de archivo resultado
counter=0
while [ -e "resultado$counter.txt" ]
do
  counter=$((counter + 1))
done

# Guardar las líneas seleccionadas en un archivo resultado con el contador
sed -n "${inicio},${fin}p" "$archivo" >> resultado$counter.txt
echo
echo "Las líneas seleccionadas se han guardado en resultado$counter.txt"



Limpia la pantalla de la terminal ejecutando el comando clear
Muestra una lista detallada de los archivos y directorios en el directorio actual con el comando ls -l
Pide al usuario que introduzca el nombre del archivo que desea copiar. El nombre del archivo se lee y almacena en la variable archivo.
Imprime una línea en blanco y luego imprime los números 1, 2 y 3 con dos espacios entre ellos con el comando printf.
Muestra el contenido del archivo con el comando cat $archivo.
Pide al usuario desde qué línea y hasta qué línea desea copiar. Las líneas inicio y fin se leen y almacenan en las variables inicio y fin, respectivamente.
Se inicializa un contador a cero. Se realiza un bucle mientras exista un archivo con nombre "resultado$counter.txt". En cada iteración, el contador se aumenta en uno.
Se utiliza el comando sed para extraer las líneas desde la línea inicio hasta la línea fin del archivo $archivo, y luego se añaden esas líneas al archivo "resultado$counter.txt" con el comando >> resultado$counter.txt.
Se imprime una línea en blanco y luego se imprime un mensaje informando al usuario de que las líneas seleccionadas se han guardado en el archivo "resultado$counter.txt".
En resumen, este script permite al usuario seleccionar un archivo y copiar un rango de líneas específico de ese archivo en un nuevo archivo con un nombre basado en "resultado" seguido de un número incremental.
Cada vez que ejecuatas warda el resultado en resultao0.sh y va aumentando el numero creando otro archivo con un numero mas resultao1.sh

Para dar permisos en la consola de bash:
chmod +x *.sh
Para ejecutar:
./copiar-sede-contador.sh
