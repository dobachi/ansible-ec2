#!/bin/bash

USER_ID=$1
WORK_DIR="/tmp"
PREFIX="ec2_"

newest_dir=`find ${WORK_DIR} -name *${PREFIX}${USER_ID}_* | sort | tail -n 1`

cat ${newest_dir}/publichosts
