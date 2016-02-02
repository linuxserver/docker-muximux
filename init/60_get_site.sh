#!/bin/bash

[[ ! -d /config/www/muximux/.git ]] && (git clone https://github.com/mescon/Muximux /config/www/muximux && \
chown -R abc:abc /config/www)

# opt out for autoupdates
[ "$ADVANCED_DISABLEUPDATES" ] && exit 0

cd /config/www/muximux || exit
git pull
chown -R abc:abc /config/www

