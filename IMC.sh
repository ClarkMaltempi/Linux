#!/bin/bash
clear; echo
read -p "Informe sua altura; (Ex. : 1.70) " altura
read -p "Informe seu peso: (Ex.: 65.5) " peso
imc= `echo "scale=2; $peso/($altura * $altura)" | bc | sed ´s/\.//´`

if [ &imc -le 1850 ]; then
        echo "Abaixo do peso"
    else

    if [ $imc -le 1850 ] && [ $imc -le 2490 ]; then
        echo "Peso saudável"
    else
        if [ $imc -gt 2490 ] && [ $imc -le 2990 ]; then
            echo "Sobrepeso"
        else
            if [ $imc -gt 2990 ] && [ $imc -le 3990 ]; then
                echo "Obeso"
            else
                echo "Obeso Mórbido"
            fi
        fi
    fi
fi