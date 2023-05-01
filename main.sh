#!/bin/bash
#####################################################################
#
# Copyright (c) 2023-present, Birchi (https://github.com/Birchi)
# All rights reserved.
#
# This source code is licensed under the MIT license.
#
#####################################################################
##
# Main
##
command_directory=$(dirname $0)/command

function example-command () {
    if [ $# -eq 0 ] ; then
        ${command_directory}/help.sh
        exit 0
    fi

    if [[ "${@[1]}" == "version" ]] ; then
        cat ${command_directory}/VERSION
    else
        ${command_directory}/help.sh
    fi

}
