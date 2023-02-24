#!/bin/env bash

if [ "$1" = "polite" ]; then
    usualsuspects=~/.gitco_suspects
    suspects="$PWD/.suspects"
    summary=$(gum input --placeholder "Summary of this change")
    description=$(gum write --placeholder "Details of this change (CTRL+D to finish)" --show-line-numbers)
    convicts=$(cat $usualsuspects $suspects 2>/dev/null | grep "\S" | sort | uniq | gum choose --no-limit)

    gum confirm "Commit the message?" && git commit -m "$summary

$description

$convicts"
else
    /usr/bin/git "$@"
fi

exit 0
