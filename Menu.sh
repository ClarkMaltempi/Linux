#!/bin/bash
Principal(){
clear; echo
echo "         Menu             "
echo "--------------------------"
echo " 1. Rota que se encontra  "
echo " 2. Data -dd/mm/aaaa      "
echo " 3. Tempo uso terminal    "
echo " 4. Sair                  "
echo "--------------------------"
echo; read -p "Faça sua escolha: " op; echo
case $op in
    1) rota;;
    2) data;;
    3) tempo;;
    4) echo "Encerrando execução..."; sleep 5; clear; exit;;
    *) erro;;
esac
}

rota(){
    clear; echo "O seu caminho completo é `pwd`"; fim
}

data(){
    clear; echo "A data é `date +%d/%m/%Y`"; fim
}

tempo(){
    clear; echo -e "Seu terminal está ligado \n`uptime`"; fim
}

erro(){
    clear; echo "Digitou a opção errada..."; fim
}

fim(){
    sleep 5; Principal
}
Principal



