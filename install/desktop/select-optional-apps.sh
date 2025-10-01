#!/bin/bash

if [[ -v OMAKFE_FIRST_RUN_OPTIONAL_APPS ]]; then
	apps=$OMAKFE_FIRST_RUN_OPTIONAL_APPS

	if [[ -n "$apps" ]]; then
		for app in $apps; do
			source "$OMAKFE_PATH/install/desktop/optional/app-${app,,}.sh"
		done
	fi
fi
