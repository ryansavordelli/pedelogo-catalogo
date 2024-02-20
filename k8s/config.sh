#!/bin/bash

export TESTE_SHELL='Variavel teste'


testeFunction(){
    if [ "$ENV_TEST = "DEV" "];then
        echo 'Ambiente é  '$ENV_TEST''
    else
        echo 'Outro ambiente'
    fi
}