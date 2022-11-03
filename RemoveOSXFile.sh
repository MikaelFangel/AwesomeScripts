#!/bin/bash
while getopts n flag

do
    case "$flag" in
        n) find . -type d -name '__MACOSX' ;;
    esac
done

if [ $OPTIND -eq 1 ] ; then
    find . -type d -name '__MACOSX' -exec rm -rf {} +
fi
