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
docker-compose ps
curl http://localhost:15006/_cluster/health\?pretty

