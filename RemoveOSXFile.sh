#!/bin/bash
while getopts n flag

do
    case "$flag" in
        n) find . -type d -name '__MACOSX' ; find . -type f -name '.DS_STORE' ;;
    esac
done

if [ $OPTIND -eq 1 ] ; then
    find . -type d -name '__MACOSX' -exec rm -rf {} +
    find . -type f -name '.DS_STORE' -exec rm -rf {} +
fi
