#!/bin/env sh

curl -sSL 'https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x73e6b8702ed0cf5c275889c923c4efd229c1630c' | gpg --import -
gpg --card-status

