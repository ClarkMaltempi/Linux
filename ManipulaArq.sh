#!/bin/bash
echo
clear;
main(){
    read -p "Digite um diretório a partir da raiz: " dir
    
    if [ -z $dir ]; then
    echo "Diretorio incorreto"
main

    elif [ -d $dir ]; then
        `cd $dir`;
    read -p "Digite o nome do arquivo [.txt]: "

        for i in `ls $dir`; do
            if [ -e $Arch ]; then

                cat $dir/$Arch
                echo
                Setcaracter
                break;

            else
                echo "Arquivo Não Existe!"
            main
            fi
        done
    fi
}

Setcaracter(){
    echo "Colocando X na frente de cada palavra para teste do script desenvolvido"
    echo
    for a in `cat $Arch`; do

        echo -n " X"
        echo -n $a
        echo -n "X "

    done
echo
}
main