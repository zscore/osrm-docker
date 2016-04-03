#!/bin/bash

pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

docker build -t pavement/osrm -f $SCRIPTPATH/Dockerfile .
