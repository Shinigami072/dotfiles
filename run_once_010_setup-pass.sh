#!/bin/env bash

if [ -e ~/.password-store/.git]; then
	pass git pull
else
	git clone git@github.com:Shinigami072/.password-store.git ~/.password-store
fi
