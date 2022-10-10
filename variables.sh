#!/bin/bash
encendido=

usage() { echo "Usage: error"; }

while getopts "10n:f:l:" o; do
    case "${o}" in
        1)  encendido=1
            echo "${encendido}"
            ;;
        0)  encendido=0
            echo "0"
            ;;
        n)  n=${OPTARG}
            if [ $encendido = 1 ];then
                /home/sibrocab/W/COS/enciende ${n}
                echo "encendiendo ${n}"
                exit 0
            else
                /home/sibrocab/W/COS/apaga ${n}
                echo "apagando ${n}"
                exit 0
            fi
            ;;
        f)  f=${OPTARG}
            echo "f=${f}"
            ;;
        l)  l=${OPTARG}
            echo "l=${l}"
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))



