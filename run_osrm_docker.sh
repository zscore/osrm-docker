#!/bin/bash

pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null

#docker run -p 5000:5000 -v $SCRIPTPATH/../osrm/osrm-chi-new/:/this_is_data -it --name pavement_osrm pavement/osrm /bin/bash

docker run -it -p 5000:5000 \
	-v /home/zblan/Dropbox/project-pavement/osrm/osrm-chi-endpoints/:/data \
	-v /home/zblan/Dropbox/project-pavement/osrm-backend-endpoints:/build \
	--name pavement_osrm pavement/osrm /bin/bash
