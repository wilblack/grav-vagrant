#!/bin/bash

echo "Configuring Nginx"
    cp /home/vagrant/provision/grav.com /etc/nginx/sites-available/grav.com > /dev/null
    
    ln -s /etc/nginx/sites-available/grav.com /etc/nginx/sites-enabled/
    
    rm -rf /etc/nginx/sites-available/default
    
    sed -i -e 's/user = www-data/user = vagrant/g' /etc/php/7.0/fpm/pool.d/www.conf
    sed -i -e 's/user = www-data/user = vagrant/g' /etc/php/7.0/fpm/pool.d/www.conf
    
    /etc/init.d/php7.0-fpm restart
    service nginx restart > /dev/null



