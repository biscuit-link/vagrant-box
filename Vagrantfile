Vagrant.configure(2) do |config|

	config.vm.box = "ubuntu/xenial64"

	config.vm.network "forwarded_port", guest: 4848, host: 4848, auto_correct: true

	config.vm.synced_folder "./", "/vagrant", disabled: true
	config.vm.synced_folder "./", "/var/www", create: true, group: "www-data", owner: "www-data"
	config.vm.synced_folder "../website", "/var/www/website", create: true, group: "www-data", owner: "www-data"
	config.vm.synced_folder "../config", "/var/www/config", create: true, group: "www-data", owner: "www-data"

	config.vm.provider "virtualbox" do |vb|
		vb.name = "Biscuit Link Development Box"
		vb.memory = "1024"
	end

	config.vm.provision "shell" do |s|
		s.path = "provision/setup.sh"
	end

end