#!/usr/bin/env bash

[[ $OSTYPE == 'darwin'* ]] && echo "Detected MACOSX... Exiting" && exit 0

path=$HOME
do_clean=1

function show_help() {
    echo 'Usage:
    -n      dry-run to print what files will be removed
    -p      set starting point in the path
    -h      show help'
    exit 0
}

function clean() {
    if [[ ! -d "$path" ]]; then
        echo "Error: Path '$path' does not exist"
        exit 1
    fi

    if [[ $do_clean -eq 1 ]]; then
        echo "Removing files..."
        find "$path" -type d -name '__MACOSX' -exec rm -rf {} \;
        find "$path" -type f -name '.DS_Store' -exec rm -f {} \;
    else
        echo "Dry run - would remove these files:"
        find "$path" -type d -name '__MACOSX'
        find "$path" -type f -name '.DS_Store'
    fi
}

while getopts "p:nh" flag; do
    case "$flag" in
        p)
            echo "Your path is set to $OPTARG"
            path=$OPTARG 
            ;;
        n)
            echo "Running a dry run..."
            do_clean=0 
            ;;
        h)
            show_help
            ;;
        *)
            show_help
            ;;
    esac
done

clean
