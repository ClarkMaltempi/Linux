#!/bin/bash
clear; echo
read -p "Informe um nome: " nome
if [ -z $nome ]; then
    echo; echo "Você não informou o nome"
    echo "Execute o script novamente..."; echo
else
    echo
    if [ $nome = "Dora" ]; then
        echo "$nome é professora"
    else 
        echo "$nome é aluno(a)"
    fi
    echo
fi
