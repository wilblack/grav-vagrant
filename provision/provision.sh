#!/bin/bash


PROJECT_DIR=/home/vagrant/grav
WWW_DIR=/home/vagrant/grav/www
NGINX_CONFIG=/etc/nginx/sites-enabled/grav.com
FOUNDATION_DIR=/home/vagrant/grav/foundation


sudo apt-get install unzip -y 

if [ -d "$WWW_DIR" ]; then 
  echo "$WWW_DIR already exists so removing it"
  rm -r $WWW_DIR
fi
# if [ -d "$FOUNDATION_DIR" ]; then 
#   echo "$FOUNDATION_DIR already exists so removing it"
#   rm -r $FOUNDATION_DIR
# fi

# echo "Making $WWW_DIR"
# mkdir $WWW_DIR

# echo "Making $FOUNDATION_DIR"
# mkdir $FOUNDATION_DIR


#echo "Cloning the Foundation repo to $WWW_DIR"
#git clone https://github.com/illumiphi/grav-order-skeleton.git $WWW_DIR

wget -O $PROJECT_DIR/grav-admin.zip https://github.com/getgrav/grav/releases/download/1.1.8/grav-admin-v1.1.8.zip
unzip $PROJECT_DIR/grav-admin.zip -d $PROJECT_DIR
mv $PROJECT_DIR/grav-admin $PROJECT_DIR/www

echo "Configuring Nginx"
    cp /home/vagrant/grav/provision/templates/grav.com /etc/nginx/sites-available/grav.com > /dev/null
    
    if [ ! -f "$NGINX_CONFIG" ]; then
        ln -s /etc/nginx/sites-available/grav.com /etc/nginx/sites-enabled/grav.com
    fi

    rm -rf /etc/nginx/sites-available/default

    echo "Setting PHP user to vagrant"
    sed -i -e 's/user = www-data/user = vagrant/g' /etc/php/7.0/fpm/pool.d/www.conf
    sed -i -e 's/user = www-data/user = vagrant/g' /etc/php/7.0/fpm/pool.d/www.conf
    
    /etc/init.d/php7.0-fpm restart
    service nginx restart > /dev/null





