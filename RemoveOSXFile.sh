#!/bin/bash
while getopts nh flag

do
    case "$flag" in
        n)
        echo "Running a dry run..."
        find . -type d -name '__MACOSX'
        find . -type f -name '.DS_STORE' ;;
        h)
        echo \
    'Usage:
    -n      dry-run
    -h      help'
    esac
done

if [ $OPTIND -eq 1 ] ; then
    find . -type d -name '__MACOSX' -exec rm -rf {} +
    find . -type f -name '.DS_STORE' -exec rm -rf {} +
fi
