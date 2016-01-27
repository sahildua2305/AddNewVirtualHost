# AddNewVirtualHost

### Create a new virtual host in less than 5 seconds!

Got some cool PHP project that you want to test on your local machine? Want to create a virtual host to have custom URL for that project to visit on your local machine?

Just copy and paste the project folder in `/var/www/html/` folder and you're just a couple of seconds away from the magic!

##### Usage: Just run this bash script from anywhere on your Ubuntu machine

    $ bash addnewvirtualhost.sh project-folder-name project-url

Here, `project-folder-name` is the name of the project folder in `/var/www/html/` corresponding to which you want to create a virtual host and `project-url` is the URL that you want to use to access that project

##### That's it! You're done!


### Instructions:

##### Installing the AddNewVirtualHost script

    $ wget https://raw.githubusercontent.com/sahildua2305/AddNewVirtualHost/master/addnewvirtualhost.sh

Once you have the script, you can run it everytime you want to create a new virtual host as shown below:

    $ bash addnewvirtualhost.sh project-folder-name project-url


Notes:

1. Script works for Ubuntu machine only.
2. Make sure port 80 is open.

---

### Behind the scene

The script will create a new virtual host with the given `project-url` and link it with the `project-folder-name` given as arguments while running the script.

##### The script does the following things:

* Creates configuration file for the new virtual host in `/etc/apache2/sites-available` folder
* Enables the newly added configuration file for the new virtual host
* Reloads apache2 service
* Adds the new virtual host URL to `/etc/hosts`
* Restarts apache2 service
