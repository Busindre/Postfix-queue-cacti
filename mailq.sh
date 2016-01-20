#!/bin/bash
# Postfix email queue in Cacti (with SSH).

# Cacti ssh pub key / User / SSH Options.
cacti_key="/opt/cacti/.ssh/id_rsa"
cacti_user="cacti"
SSH_OPTIONS=""

mailq=`ssh $SSH_OPTIONS -l $cacti_user -i $cacti_key $1  mailq | grep 'Request' | awk '{print "size:"$2 " queue:"$5}'`
[ -z "$mailq" ] && echo "size:0 queue:0" && exit
echo $mailq
