#!/bin/bash
path="."
do_clean=1

function clean() {
    if [[ $do_clean -eq 1 ]] ; then
        find $path -type d -name '__MACOSX' -exec rm -rf {} +
        find $path -type f -name '.DS_STORE' -exec rm -rf {} +
    else
        find $path -type d -name '__MACOSX'
        find $path -type f -name '.DS_STORE'
    fi
}

while getopts p:nh flag

do
    case "$flag" in
        p)
        echo "Your path is set to $OPTARG"
        path=$OPTARG ;;
        n)
        echo "Running a dry run..."
        do_clean=0 ;;
        h)
        echo \
    'Usage:
    -n      dry-run
    -h      help'
    esac
done

clean
