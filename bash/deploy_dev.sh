#!/usr/bin/env bash

dir=$(dirname $(readlink -f $0))
cd ${dir}
cd ..
/opt/plesk/php/8.1/bin/php -d memory_limit=-1 composer.phar install
/opt/plesk/php/8.1/bin/php -d memory_limit=-1 vendor/drush/drush/drush.php cr
/opt/plesk/php/8.1/bin/php -d memory_limit=-1 vendor/drush/drush/drush.php updatedb:status
/opt/plesk/php/8.1/bin/php -d memory_limit=-1 vendor/drush/drush/drush.php cim
/opt/plesk/php/8.1/bin/php -d memory_limit=-1 vendor/drush/drush/drush.php cr
/opt/plesk/php/8.1/bin/php -d memory_limit=-1 vendor/drush/drush/drush.php cron
