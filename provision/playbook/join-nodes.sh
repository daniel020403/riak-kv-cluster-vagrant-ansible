#!/usr/bin/env bash

if [ $CLUSTER_PROCESS == 'join' ]
then
    if [ $RIAK_IP != $CLUSTER_01_FIRST_NODE_IP ]
    then
        riak-admin cluster join $CLUSTER_01_FIRST_NODE_NAME@$CLUSTER_01_FIRST_NODE_IP
    fi
elif [ $CLUSTER_PROCESS == 'commit' ]
then
    riak-admin cluster commit
fi