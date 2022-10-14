#!/bin/bash
encendido=
have_1=false
have_0=false
have_a=false
have_n=false
have_f=false
have_l=false

usage() { echo "Usage: $0 [-1 or -0 ] [ -a ] [ -n x ] [ -f x ] [ -l x ] x is a number between 0 and 8"; }

check() {
    if [[ have_0 && have_1 ]];then
                echo "error, cannot use both -0 && -1"
                usage
                exit 0
    fi
    if [[ have_a && have_n && have_l && have_f ]];then
                echo "error, cannot use use multiple options -a -n -l -f"
                usage
    fi
}

while getopts "10an:f:l:h" o; do
    case "${o}" in
        1)  have_1=true  
            check
            encendido=1
            echo "${encendido}"
            ;;
        0)  have_0=true
            check
            encendido=0
            echo "0"
            ;;
        a)  have_a=true
            check
            if [[ $encendido = 1 ]];then
            echo "encendiendo todas"
            ./enciende_todas
            exit 0
            else
                echo "apagando todas"
                ./apaga_todas
                exit0
            fi
            ;;
        n)  n=${OPTARG}
            have_n=true
            check
            if [[ $encendido = 1 ]];then
                echo "encendiendo ${n}"
                ./enciende ${n}
                exit 0
            else
                echo "apagando ${n}"
                ./apaga ${n}
                exit 0
            fi
            ;;
        f)  f=${OPTARG}
            have_f=true
            check
            if [[ $f -gt 8 ]];then
                usage
                exit 0
            fi
            if [[ $f -lt 0 ]]; then
                usage
                exit 0
            fi
            if [[ $encendido = 1 ]];then
                while [ $f -lt 9 ] 
                do 
                echo "encendiendo ${f}"
                ./enciende ${f}
                ((f++))
                done
            else
                while [ $f -lt 9 ]
                do
                echo "apaganado ${f}"
                ((f++))
                done
            fi
            ;;
        l)  l=${OPTARG}
            have_l=true
            check
            if [[ $f -lt 0 ]];then
                usage
                exit 0
            fi
            if [[ $f -gt 8 ]]; then
                usage
                exit 0
            fi
            i=0
            if [[ $encendido = 1 ]];then
                while [ $i -le $l  ]
                do
                    echo "encendiendo ${i}"
                    ./enciende ${i}
                    ((i++))
                done
            else
                while [ $i -le $l ]
                do
                    echo "apagando ${i}"
                    ./apaga ${i}
                    ((i++))
                done
            fi
            ;;
        h)
            usage
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))



