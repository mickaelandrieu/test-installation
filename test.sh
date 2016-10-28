#!/bin/bash

#
# ./test.sh "test-install" "http://projects.dev/test-install"
#
#

# Stop on failure
set -e

# Show executed commands
set -x

if [[ -z "$1" ]]
then
    echo "You should specify an destination path ('/test-install') as first argument";
    exit;
fi;

if [[ -z "$2" ]]
then
    echo "You should specify an host ('http://projects.dev') as second argument";
    exit;
fi;

DESTINATION="$1";
HOST="$2"

# Get release
echo "Get release"
rm -rf $DESTINATION
unzip -o prestashop_1.7.0.0-RC.3.zip
mv prestashop_1.7.0.0-RC.3 $DESTINATION

cd $DESTINATION

# Launch unzipping
firefox $HOST
