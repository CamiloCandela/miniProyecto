#-------------------- MINIPROYECTO -----------------

# -*- mode: ruby -*-
# vi: set ft=ruby :

#----------- WEB2 -------------------------

vagrant ssh web2

#Instalamos lxd
sudo apt-get install lxd -y
newgrp lxd

#configuramos Cluster
sudo lxd init 

#Creamos nuestro contenedor web2
lxc launch ubuntu:20.04 web2

#entramos a bash web2
lxc exec web2 /bin/bash
apt update && apt upgrade
apt install apache2
systemctl enable apache2
systemctl restart apache2
exit

#creamos el archivo index.html
vim index.html
---creamos archivo-----
<!DOCTYPE html>
<html>
<body>
<h1>pagina WEB2</h1>
<p>Esta es la página de WEB2 LXD</p>
</body>
</html>
--------------------

lxc file push index.html web1/var/www/html/index.html


