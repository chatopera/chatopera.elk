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
if [ ! -f .env ]; then
    echo "Copy" `pwd`"/sample.env as .env"
    echo "Modify configurations."
    exit 1
fi

# Enable lmit resources https://gitlab.chatopera.com/chatopera/chatopera.bot/issues/1169
#docker-compose --compatibility up -d $*
docker-compose up -d $*
