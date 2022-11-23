#!/bin/bash
clear; echo
read -p "De o nome de um arquivo: " arq; echo
if [ -z $arq ]; then 
    echo "Você não informou o arquivo. Existe novamente o script..."
else
    if [ -e $arq ]; then
        if [ -r $arq ]; then
            echo "O $arq tem permissão de Leitura"
        else
            echo "O $arq Não tem permissão de Leitura"
        fi
    else 
        echo "O arquivo não existe nesse diretório"
    fi
fi