#!/bin/bash

if [[ "$1" == "master" ]]; then
	echo
	echo Deploying Senti ML Framework $1 ...
	rsync -r --quiet $2/ deploy@rey.webhouse.net:/srv/nodejs/senti/act/ml-framework/production
	echo
	echo Restarting Senti ML Framework service: $1 ...
	ssh deploy@rey.webhouse.net 'sudo /srv/nodejs/senti/act/ml-framework/production/scripts/service-restart.sh master'
	echo
	echo Deployment to Senti ML Framework $1 and restart done!
	exit 0
fi

if [[ "$1" == "dev" ]]; then
	echo
	echo Deploying Senti ML Framework $1 ...
	rsync -r --quiet $2/ deploy@rey.webhouse.net:/srv/nodejs/senti/act/ml-framework/development
	echo
	echo Restarting Senti ML Framework service: $1 ...
	ssh deploy@rey.webhouse.net 'sudo /srv/nodejs/senti/act/ml-framework/development/scripts/service-restart.sh dev'
	echo
	echo Deployment to Senti ML Framework $1 and restart done!
	exit 0
fi