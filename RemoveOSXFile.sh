#!/bin/bash

if ["$1" -eq "-n"]; then
    find . -type d -name '__MACOSX'
else
    find . -type d -name '__MACOSX' -exec rm -rf {} +
fi
