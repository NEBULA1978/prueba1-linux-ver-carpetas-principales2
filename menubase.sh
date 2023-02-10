#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar directorio home con cd ~"
    echo "2. Imprimir procesos"
    echo "3. Este script imprime un mensaje por la terminal, introducir nombre un directorio, y nombre un fichero dentro de ese directorio,me pregunta cuantas copiar quiero crear del archivo"
    echo "5. Muestre las carpetas principales de linux mint y me pregunte de cual quiero cer los arcchos que hay dentro"
    echo "6. Me pregunte que introducza el nombre del archivo a hacerle un cat con more"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Este es mi script"
        cd ~
        ls
        read foo
        ;;
    2)
        echo "Imprimir procesos"
        # Imprimir la carpeta de usuario
        ls ~

        # Imprimir procesos
        ps -a # -a muestra los de todos los usuarios

        echo "Dentro de comillas # no cuenta como comentario"

        # El siguiente comando está comentado y no se ejecuta
        # cd /
        read foo
        ;;
    3)
        echo "Introduce el nombre que deseas para el directorio:"
        read nombre_dir
        echo "Creando el directorio: $nombre_dir"
        mkdir $nombre_dir
        echo "Introduce el nombre que deseas para el archivo:"
        read nombre_archivo
        echo "Introduce el número de copias que deseas crear:"
        read num_copias
        for i in $(seq 1 $num_copias)
        do
          touch $nombre_dir/$nombre_archivo-$i.txt
        done
        read foo
        ;;
    5)
        echo "Las carpetas principales de Linux Mint son:"
        echo "/bin"
        echo "/boot"
        echo "/dev"
        echo "/etc"
        echo "/home"
        echo "/lib"
        echo "/root"
        echo "/run"
        echo "/usr"
        echo "/var"
        echo ""
        echo "Introduce el nombre de la carpeta que deseas ver:"
        read carpeta
        echo "Los archivos dentro de $carpeta son:"
        ls $carpeta
        echo "Pulsa intro para volver al menu principal:"
        read foo
        ;;
    6)
    echo "Las carpetas principales de Linux Mint son:"
    echo "/bin"
    echo "/boot"
    echo "/dev"
    echo "/etc"
    echo "/home"
    echo "/lib"
    echo "/root"
    echo "/run"
    echo "/usr"
    echo "/var"
    echo ""
    for carpeta in "/bin" "/boot" "/dev" "/etc" "/home" "/lib" "/root" "/run" "/usr" "/var"
    do
        echo "Archivos en la carpeta $carpeta:"
        ls $carpeta | more
        echo ""
    done

    while true
    do
        echo "Introduce el nombre de la carpeta que deseas entrar:"
        read carpeta
        cd $carpeta
        echo "Los archivos dentro de $carpeta son:"
        ls $carpeta
        echo "Introduce el nombre del archivo que deseas ver con 'cat' y 'more':"
        read archivo
        if [ -f $archivo ]; then
            echo "Contenido del archivo $archivo:"
            cat $archivo | more
        else
            echo "El archivo $archivo no existe en la carpeta $carpeta."
        fi
        echo "Pulsa intro para continuar viendo archivos o escribe 'salir' para volver al menú principal:"
        read accion
        if [ "$accion" == "salir" ]; then
            break
        fi
    done
    ;;
# Ahora, después de introducir el nombre de la carpeta que deseas entrar, se mostrarán los archivos dentro de esa carpeta y se preguntará por el archivo que deseas ver con cat y more. Luego, se mostrará el contenido del archivo y se volverá a preguntar si se desea ver otro archivo o si se desea salir y volver al menú principal.


    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
