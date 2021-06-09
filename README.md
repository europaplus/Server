<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/1920px-Docker_%28container_engine%29_logo.svg.png"
     style="text-align:center" width=300px />
____
This project is intended to introduce to system administration. Using scripts to automate tasks. This server will run multiples services: Wordpress, phpMyAdmin, and a SQL database.

 > CMD build:<br>
 > `$> docker build -t name .`<br>
 > CMD run:<br>
 > `$> docker run --name aname -it -p 80:80 -p 443:443 name`<br>

Utils :
  [Generate SSL](https://linuxize.com/post/creating-a-self-signed-ssl-certificate/)
  [SSL](https://admin-serv.net/blog/670/creer-et-installer-un-certificat-ssl-sous-nginx/)
  [Install Nginx](https://www.youtube.com/watch?v=YD_exb9aPZU)
  [Install php](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mariadb-php-lemp-stack-on-debian-10)
  [Install phpmyadmin](https://www.digitalocean.com/community/tutorials/how-to-install-phpmyadmin-from-source-debian-10)
  [Install wordpress](https://www.osradar.com/install-wordpress-debian-10/)
