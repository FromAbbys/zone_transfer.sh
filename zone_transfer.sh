#!/bin/bash
#
#

# Getting name servers of the host and trying transfer zone
#
#
#
if [ "$1" == "" ]
then
        echo -e  "How to use:\n$0 domain.com"
else

        for X in $(host -t ns $1 | cut -d " " -f4)
        do
                echo "============= $X ============="
                echo
                host -la $1 $X
                echo
                echo
        done
fi
