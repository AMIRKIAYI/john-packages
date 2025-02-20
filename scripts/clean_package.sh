#!/bin/bash

###############################################################################
#        _       _             _   _            _____  _
#       | |     | |           | | | |          |  __ \(_)
#       | | ___ | |__  _ __   | |_| |__   ___  | |__) |_ _ __  _ __   ___ _ __
#   _   | |/ _ \| '_ \| '_ \  | __| '_ \ / _ \ |  _  /| | '_ \| '_ \ / _ \ '__|
#  | |__| | (_) | | | | | | | | |_| | | |  __/ | | \ \| | |_) | |_) |  __/ |
#   \____/ \___/|_| |_|_| |_|  \__|_| |_|\___| |_|  \_\_| .__/| .__/ \___|_|
#                                                       | |   | |
#                                                       |_|   |_|
#
# Copyright (c) 2019-2024 Claudio André <dev at claudioandre.slmail.me>
#
# This program comes with ABSOLUTELY NO WARRANTY; express or implied.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, as expressed in version 2, seen at
# http://www.gnu.org/licenses/gpl-2.0.html
###############################################################################
# Script to remove unnecessary stuff from John the Ripper package
# More info at https://github.com/openwall/john-packages

# Remove the left-over from testing
rm -f run/john.log
rm -f run/john.pot
rm -f run/john-local.conf

# Remove unused stuff
rm -rf run/ztex

# Cleanup to deploy
if [[ "${DEPLOY_PAK-No}" == "Yes" ]]; then
	rm -rf .[!.]*.yml ./*.yml src .git .ci .circleci .azure .editorconfig .gitattributes \
		.github .gitignore .mailmap .[!.]*.sh ./*.sh .travis .travis.yml shell.nix requirements.txt
fi
