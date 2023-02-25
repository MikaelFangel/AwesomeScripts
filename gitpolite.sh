#!/bin/env bash

findconvicts() {
    usualsuspects=~/.gitco_suspects
    suspects="$PWD/.suspects"
    convicts=$(cat $usualsuspects $suspects <(git shortlog -sne --all | cut  -f 2 | grep -v "$(git config user.name) <$(git config user.email)>" | head -n 5) 2>/dev/null | grep "\S" | sort | uniq | gum choose --no-limit | sed 's/^/Co-authored-by: /')
}

if [ "$1" = "polite" ]; then
        # Remove polite from the argument list
        shift

        # Check provided arguments
        while getopts "am:" flag; do
            case "$flag" in
                a) git add --all ;;
                m) summary="$OPTARG" ;;
            esac
        done

        # If no summary has been provied assume interactive mode
        if [ -z "$summary" ]; then
            summary=$(gum input --placeholder "Summary of this change")
            description=$(gum write --placeholder "Details of this change (CTRL+D to finish)" --show-line-numbers)
        fi

        # Always suggest adding co-authors
        findconvicts
 
        # Confirm the commit
        gum confirm "Commit the changes?" && git commit -m "$summary

$description

$convicts"
else
    /usr/bin/git "$@"
fi

exit 0
