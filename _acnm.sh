#!/bin/bash

figlet "Drive Digital Security Updates"

echo Begin backup process...
wp db export backups/$(date +"%Y%m%d")_db.sql --allow-root

echo Begin plugins update process...
wp plugin update --all --dry-run --allow-root
wp plugin update --all --allow-root

echo Begin core update process...
wp core update --allow-root
