#!/bin/sh
# @Author: sahildua2305
# @Date:   2016-01-27 03:37:25
# @Last Modified by:   sahildua2305
# @Last Modified time: 2016-01-27 05:26:17


# Create configuration file for the new virtual host in `sites-available` folder
sudo cat <<EOF >/etc/apache2/sites-available/$1.conf
<VirtualHost $2:80>
DocumentRoot "/var/www/html/$1/"
ServerName $2
<Directory "/var/www/html/$1/">
Require all granted
# Enables .htaccess files for this site
AllowOverride All
</Directory>
# Other directives here
</VirtualHost>
EOF

# Enable the newly added configuration file for the new virtual host
sudo a2ensite $1.conf

# Reload apache2 service
sudo service apache2 reload

# Add the new virtual host URL to `/etc/hosts`
sudo echo "127.0.0.1 	$2" >> /etc/hosts

# Restart apache2 service
sudo service apache2 restart
