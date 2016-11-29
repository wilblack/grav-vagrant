# Install

1. Create a directory

    mkdir ~/my-local-dir
    cd my-local-dir

2. Clone the Git repo
    
    git clone https://github.com/wilblack/grav-vagrant.git


3. `vagrant up` This takes a while. If everything works you should be able to navigate to the `localhost:8081` and it should give you the user creation screen.

To get into the Vagrant box use `vagrant ssh`




## DEV NOTES

Adding a new user without interaction

bin/plugin login newuser -u admin -e admin@illumiphi.com -p admin -P b -N "Site Admin" -t "Site Administrator"