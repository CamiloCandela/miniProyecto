Vagrant.configure("2") do |config|
 config.vm.define :web1 do |web1|
 web1.vm.box = "bento/ubuntu-20.04"
 web1.vm.network :private_network, ip: "192.168.100.7"
 web1.vm.provision "shell", path: "script_web1.sh"
 web1.vm.hostname = "web1"
 end
 config.vm.define :web2 do |web2|
 web2.vm.box = "bento/ubuntu-20.04"
 web2.vm.network :private_network, ip: "192.168.100.8"
 web2.vm.provision "shell", path: "script_web2.sh"
 web2.vm.hostname = "web2"
 end
 config.vm.define :serverBalancer do |serverBalancer|
 serverBalancer.vm.box = "bento/ubuntu-20.04"
 serverBalancer.vm.network :private_network, ip: "192.168.100.10"
 serverBalancer.vm.provision "shell", path: "script_serverBalancer.sh"
 serverBalancer.vm.hostname = "serverBalancer"
 end
end
