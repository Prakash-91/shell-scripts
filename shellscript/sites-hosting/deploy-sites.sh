#!/bin/bash

function checkAndInstallApcahe2Server(){
    dpkg -s apache2 >> /dev/null
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
        local APACHE2_RUNNING_STATUS=$(systemctl status apache2 | grep "Active:" | awk '{print $2}')
        if [ $APACHE2_RUNNING_STATUS != "active" ]
        then
            return 300
        fi
    fi
    return 0
}

function setupSiteDirectory(){
    # If ZIP file location is not available
    if [ ! -e $ZIP_LOC ]
    then
        return 400
    fi

    # If SITE_DIR is available in /var/www
    if [ -d /var/www/$SITE_DIR ] 
    then
        TODAY=`date +%d%m%y%H%S`
        sudo mv /var/www/$SITE_DIR /var/www/$SITE_DIR-$TODAY
   else
        # If SITE_DIR is not available in /var/www
        sudo cp $ZIP_LOC /var/www/
        sudo gunzip /var/www/$SITE_DIR.tar.gz
        sudo tar -zxvf /var/www/$SITE_DIR.tar -C /var/www 
        sudo chmod -R 755 /var/www/$SITE_DIR
        sudo rm -rf /var/www/$SITE_DIR.tar
    fi
    return 0

}

#main function
SITE_DIR=$1
ZIP_LOC=$2
DOMAIN_NM=$3

ARGS=$#
if [ $ARGS -ne 3 ]
then
    echo "ERROR:sitedirectory, zipfilepath and domain name are required"
 exit 100
 fi

checkAndInstallApcahe2Server
APACHE2_STATUS=$?
if [ $APACHE2_STATUS -eq 200 ]
 then
    echo "ERROR: Apache2 installation failure , Please check logs"
    exit 200
fi
if [ $APACHE2_STATUS -eq 300 ]
 then
    echo "ERROR : Apache2 status is not runninng , Before automating please restart the service ."
    exit 300
fi

setupSiteDirectory
SITE_DIRECTORY_STATUS=$?
if [ $SITE_DIRECTORY_STATUS -eq 400 ]
then
    echo "ERROR: Zip file location was wrong , Please make it correct."
    exit 400
fi

    
