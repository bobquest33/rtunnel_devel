#!/bin/sh
#checkURL.sh
yourURL="http://<ec2_host>.compute.amazonaws.com:8001"
if curl --output /dev/null --silent --head --fail "$yourURL"
then
    echo "This URL Exist"
else
    echo "This URL Not Exist"
    sudo service rtunnel.sh restart
fi