#!/bin/bash
if [[ $1 == "-e" ]];
then
    if [[ -f "$2" ]];
    then
        openssl aes-256-cbc -in "$2" -out "$2.aes"
    else
        echo "This file does not exist!" 
    fi
elif [[ $1 == "-d" ]];
then
    if [[ -f "$2" ]];
    then
        openssl aes-256-cbc -d -in "$2" -out "$2.decrypt"
    else
        echo "This file does not exist!" 
    fi
else
    echo -e "Encrypte or decrypte a file with the aes-256-cbc cipher\n"
    echo -e "Usage:"
    echo -e "\tEncrypte: $0 -e [file]"
    echo -e "\tDecrypte: $0 -d [file]"
fi
