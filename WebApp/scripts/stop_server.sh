#!/bin/bash
# Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0
#
service=node
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
killall node
fi
