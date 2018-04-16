#!/bin/bash

service=nginx
email=youremail@example.com

if ([ -e /var/run/nginx.pid ])
then
	subject="$service running"
	echo "$service is running" | mail -s "$subject" $email
else
	subject="$service down"
	echo "$service is down" | mail -s "$subject" $email
fi
