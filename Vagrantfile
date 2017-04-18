# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.define "puppetserver" do |server|
	server.vm.hostname = "puppetserver.minsk.epam.com"
	server.vm.network "private_network", ip: "192.168.100.50"
	server.vm.provider 'virtualbox' do |vb|
         vb.customize ["modifyvm", :id, "--memory", "4096"]
         vb.customize ["modifyvm", :id, "--cpus", "2"]
	end
        server.vm.provision :shell, path: "server.sh"
  end

  config.vm.define "agent" do |agent|
	agent.vm.hostname = "agent.minsk.epam.com"
	agent.vm.network "private_network", ip: "192.168.100.51"
        agent.vm.provider 'virtualbox' do |vb|
         vb.customize ["modifyvm", :id, "--memory", "1512"]
         vb.customize ["modifyvm", :id, "--cpus", "1"]
	end
	agent.vm.provision :shell, path: "agent.sh"
  end 
end
