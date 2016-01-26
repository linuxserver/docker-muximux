#!/bin/bash

[[ ! -L /config/config.json ]] && ln -s /app/muximux/config.json /config/config.json

chown -R abc:abc /config

