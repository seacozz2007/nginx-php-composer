#!/bin/sh
#########################################################################
# File Name: start.sh
# Author: Eric_zhang
# Email:  84089842@qq.com
# Version:
# Created Time: 2018/4/28
#########################################################################
DATA_DIR=/data/www

set -e
chown -R www.www $DATA_DIR
export PATH=$PATH:/usr/local/php/bin
memcached -u root -d
/usr/bin/supervisord -n -c /etc/supervisord.conf
