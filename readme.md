# Install

1. Create a directory

    mkdir ~/my-local-dir
    cd my-local-dir

2. Clone the Git repo
    
    git clone https://github.com/wilblack/grav-vagrant.git


3. `vagrant up` This takes a while. If everything works you should be able to navigate to the `localhost:8081` and it should give you the user creation screen.

To get into the Vagrant box use `vagrant ssh`


## NGINX
Restart NGINX
    sudo service nginx restart


## DEV NOTES



Adding a new user without interaction

bin/plugin login newuser -u admin -e admin@illumiphi.com -p Admin1234 -P b -N "Site Admin" -t "Site Administrator"


## Getting SASS working
First gem install SASS

    scss --watch scss:css-compiled

## Adding sub repos

Inside this repo, make a folder do a 

    git clone https://github.com/illumiphi/grav-order-foundation.git www
    cd www 
    git checkout develop

Then add the following sub-folders

    cd www
    mkdir logs images assets user/data

Then clone the pages repo to `www/user/pages`

    cd user
    git clone https://github.com/illumiphi/pages.git pages
    git checkout develop


