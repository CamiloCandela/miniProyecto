#-------------------- MINIPROYECTO -----------------

# -*- mode: ruby -*-
# vi: set ft=ruby :

#----------- WEB1 -------------------------

vagrant ssh web1

#Instalamos lxd
sudo apt-get install lxd -y
newgrp lxd

#configuramos Cluster
sudo lxd init 

#Creamos nuestro contenedor web1
lxc launch ubuntu:20.04 web1

#entramos a bash web1
lxc exec web1 /bin/bash
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
<h1>pagina WEB1</h1>
<p>Esta es la página de WEB1 LXD</p>
</body>
</html>
--------------------

lxc file push index.html web1/var/www/html/index.html



