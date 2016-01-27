# AddNewVirtualHost

### Create a new virtual host in less than 5 seconds!

Got some cool PHP project that you want to test on your local machine? Want to create a virtual host to have custom URL for that project to visit on your local machine?

Just copy and paste the project folder in `/var/www/html/` folder and you're just a couple of seconds away from the magic!

##### Usage: Just run this bash script from anywhere on your Ubuntu machine

    $ bash add-site-localhost.sh project-folder-name project-url

Here, `project-folder-name` is the name of the project folder in `/var/www/html/` corresponding to which you want to create a virtual host and `project-url` is the URL that you want to use to access that project

##### That's it! You're done!


### Instructions:

##### Installing the AddNewVirtualHost script

    $ wget https://raw.githubusercontent.com/sahildua2305/AddNewVirtualHost/master/add-site-localhost.sh

Once you have the script, you can run it everytime you want to create a new virtual host as shown below:

    $ bash add-site-localhost.sh project-folder-name project-url
