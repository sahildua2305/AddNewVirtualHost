#!/bin/sh
# @Author: sahildua2305
# @Date:   2016-01-27 03:37:25
# @Last Modified by:   sahildua2305
# @Last Modified time: 2016-01-27 05:14:21


sudo cat <<EOF >/etc/apache2/sites-available/$1.conf
<VirtualHost $2:80>
DocumentRoot "/var/www/html/$1/"
ServerName $2
<Directory "/var/www/html/$1/">
allow from all
order allow,deny
# Enables .htaccess files for this site
AllowOverride All
</Directory>
# Other directives here
</VirtualHost>
EOF

# sudo cp /etc/apache2/sites-available/$1.conf  /etc/apache2/sites-enabled/$1.conf

sudo a2ensite $1.conf

sudo service apache2 reload

sudo echo "127.0.0.1 	$2" >> /etc/hosts

sudo service apache2 restart
