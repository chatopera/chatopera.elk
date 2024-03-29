#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
export PYTHONUNBUFFERED=1
export PATH=/opt/miniconda3/envs/venv-py3/bin:$PATH

# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return

cd $baseDir/..
set -x

if [ -f .env ]; then
    source .env
else
    echo ".env not present" `pwd`
    exit 1
fi

docker-compose ps
curl http://localhost:${ES_PORT1}/_cluster/health\?pretty

