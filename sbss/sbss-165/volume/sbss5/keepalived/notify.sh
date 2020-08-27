#!/bin/bash

function takeover()
{
    # start sbss
    /swb/bin/sbss &
}

function standby()
{
    # stop sbss
    ps -ef | grep -v grep | grep /swb/bin/sbss | awk '{print $2}' | xargs kill -9
}

function fault()
{
    return
}


case $1 in
        master)
                takeover
                ;;
        backup)
                standby
                ;;
        fault)
                fault
                ;;
        *)
                echo "Usage: $(basename $0) {master|backup|fault}"
                exit 1
                ;;
esac

