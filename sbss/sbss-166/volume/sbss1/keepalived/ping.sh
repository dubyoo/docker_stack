#!/bin/bash

ping -c 1 10.229.244.1 &>  /dev/null
if [ $? -eq 0 ];then
    exit 0
else
    exit 2
fi

