#!/bin/bash

[[ ! -d /config/www/muximux/.git ]] && (git clone https://github.com/mescon/Muximux/config/www/muximux && \
chown -R abc:abc /config/www)


[[ ! -f /config/www/muximux/config.ini.php ]] && cp /config/www/muximux/config.ini.php-example /config/www/muximux/config.ini.php

# opt out for autoupdates
[ "$ADVANCED_DISABLEUPDATES" ] && exit 0

cd /config/www/muximux
git pull

chown -R abc:abc /config

