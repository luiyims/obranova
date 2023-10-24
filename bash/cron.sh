#!/usr/bin/env bash

dir=$(dirname $(readlink -f $0))
cd ${dir}
cd ..
/opt/plesk/php/8.1/bin/php vendor/drush/drush/drush.php cron
/opt/plesk/php/8.1/bin/php vendor/drush/drush/drush.php -v cr
