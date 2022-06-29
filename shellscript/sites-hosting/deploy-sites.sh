#!/bin/bash

function checkApcahe2Installed(){
    dpkg -s apache2 >> install.log
    local IS_APACHE2_INSTALLED=$?
    if [ $IS_APACHE2_INSTALLED -ne 0 ]
    then
        echo "Apache2 in not installed , Hence installing it."
        sudo apt update -y
        sudo apt install -y apache2 
        local APACHE2_INSTALLED_STATUS=$?
        if [ $APACHE2_INSTALLED_STATUS -ne 0 ]
        then
            return 200
        fi
    else
        echo "Apache2 is alreday installed , Hence chekcing Running Status"
        local APACHE2_RUNNING_STATUS=$(sudo systemctl status apache2 | grep "Active:" | awk '{print $2}')
        if [ $APACHE2_RUNNING_STATUS != "active" ]
        then
            return 300
        fi
    fi
    return 0
}

ARGS=$#
if [ $ARGS -ne 3 ]
then
    echo "ERROR: Please Pass sitedirectory, zipfilepath and domain name "
 exit 100
 fi

checkApcahe2Installed
APACHE2_STATUS=$?
if [ $APACHE2_STATUS -eq 200 ]
 then
    echo "ERROR: Apache2 installation failure , Please check logs"
    exit 200
fi
if [ $APACHE2_STATUS -eq 300 ]
 then
    echo "ERROR : Apache2 status is not runninng , Please check logs"
    exit 300
fi

    
