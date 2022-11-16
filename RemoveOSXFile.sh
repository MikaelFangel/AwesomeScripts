#!/bin/bash

[[ $OSTYPE == 'darwin'* ]] && echo "Detected MACOSX... Exiting" && exit 0

path="."
do_clean=1

function clean() {
    if [[ $do_clean -eq 1 ]] ; then
        find $path -type d -name '__MACOSX' -exec rm -rfv {} +
        find $path -type f \( -name '.DS_STORE' -o -name '.DS_Store' \) -exec rm -rfv {} +
    else
        find $path -type d -name '__MACOSX'
        find $path -type f \( -name '.DS_STORE' -o -name '.DS_Store' \)
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
    -n      dry-run to print what files will be removed
    -p      set starting point in the path
    -h      show help'
    esac
done

clean
