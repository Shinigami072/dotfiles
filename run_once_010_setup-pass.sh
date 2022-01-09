#!/bin/env bash
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK="/run/user/$UID/gnupg/S.gpg-agent.ssh"
gpg-connect-agent updatestartuptty /bye > /dev/null

if [ -e ~/.password-store/.git ]; then
	pass git pull
else
	git clone git@github.com:Shinigami072/.password-store.git ~/.password-store
fi
