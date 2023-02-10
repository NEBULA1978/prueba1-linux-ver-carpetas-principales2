#!/bin/bash

# Mostrar las carpetas del sistema y de home
echo "Carpetas del sistema:"
ls /
echo "Carpetas de home:"
ls ~

# Preguntar en qué carpeta quiere entrar
echo "En qué carpeta desea entrar?"
read carpeta

# Validar la entrada del usuario con una expresión regular
if [[ $carpeta =~ ^/([a-zA-Z0-9_\-\.]+/)*[a-zA-Z0-9_\-\.]+$ ]]; then
    # Verificar si hay algún archivo que se pueda leer con cat
    for archivo in $(ls $carpeta)
    do
        if [ -r "$carpeta/$archivo" ]; then
            echo "Hay un archivo llamado $archivo que se puede leer."
            echo "¿Desea leerlo con 'cat'?"
            read respuesta
            if [ "$respuesta" == "s" ] || [ "$respuesta" == "S" ]; then
                cat "$carpeta/$archivo"
            fi
            break
        fi
    done
else
    echo "La entrada no es una ruta de carpeta válida."
fi
