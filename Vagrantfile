# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
        config.vm.define "jenkinsVM" do |vml|
                vml.vm.box = "geerlingguy/centos7"
                 vml.vm.network "forwarded_port", guest: 80, host: 8080
		 vml.vm.network "private_network", ip: "192.168.56.10"
                vml.vm.provider "virtualbox" do |vb|
                        vb.name = "jenkinsVM"
                        vb.memory = "1024"
                end
	#vml.vm.provision "shell", path: "/Users/raol/workspace/Assignment3/scripts/jenkins.sh"
        #echo "Hello from Jenkins Machine"
        end

         config.vm.define "sonarcubeVM" do |vm2|
                vm2.vm.box = "geerlingguy/centos7"
                vm2.vm.network "forwarded_port", guest: 80, host: 8090
		 vm2.vm.network "private_network", ip: "192.168.56.10"
                vm2.vm.provider "virtualbox" do |vb|
                        vb.name = "sonarcubeVM"
                        vb.memory = "1024"
                end
        #vm2.vm.provision "shell",run : "always",inline : <<-SHELL
        #echo "Hello from SonarCube Machine"
        vm2.vm.provision "shell", path: "/Users/raol/workspace/Assignment3/scripts/sonarqube.sh"
	end

	config.vm.define "artifactoryVM" do |vm3|
                vm3.vm.box = "geerlingguy/centos7"
                vm3.vm.network "private_network", ip: "192.168.56.30"
               vm3.vm.network "forwarded_port", guest: 80, host: 8095
		 vm3.vm.provider "virtualbox" do |vb|
                        vb.name = "Artifactory"
                        vb.memory = "1024"
                end
        #vm2.vm.provision "shell",run : "always",inline : <<-SHELL
        #echo "Hello from Artifactoy Machine"
        end
end
