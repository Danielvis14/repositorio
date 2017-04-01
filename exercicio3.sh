#!/bin/bash


echo ""
read -p " Informe o salário: " sal
sal=$(sed 's/,/\./' <<< "$sal")
tx=$(awk '{if($1<=0) print "0";else if($1<=500) print "20";else if($1>500) print "10"}' <<< "$sal")
    if ((tx==0));then 
    exit
    else

     #Calculo com o bc
     echo -e "\n O salário: $sal foi acrescido de ${tx}%\n Salário Corrigido: $(bc <<< "scale=2; (${tx}/100+1) * $sal" | sed 's/\./,/')"
    
    fi
