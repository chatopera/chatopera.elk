#!/bin/bash -e

baseDir=$(cd `dirname "$0"`;pwd)


function clean_log(){
	CONTAINER=$1

	if [[ -z $CONTAINER ]]; then
	echo "No container specified"
	exit 1
	fi

	set -x
	if [[ "$(docker ps -aq -f name=^/${CONTAINER}$ 2> /dev/null)" == "" ]]; then

	CONTAINER="$(docker-compose ps $CONTAINER 2> /dev/null | awk 'END {print $1}')"

	if [[ -z $CONTAINER ]]; then
	echo "Container \"$1\" does not exist, exiting."
	exit 1
	fi
	fi

	log=$(docker inspect -f '{{.LogPath}}' $CONTAINER 2> /dev/null)
	sudo truncate -s 0 $log
}


cd $baseDir/..
clean_log elk-es
clean_log elk-kibana
clean_log elk-logstash
