c = ENV["c"] ? ENV["c"]=="1" ? c=1 : c=0 : c=0
r = ENV["r"] ? ENV["r"]=="1" ? r=1 : r=0 : r=1
s = ENV["s"] ? ENV["s"]=="1" ? s=1 : s=0 : s=0

VAGRANT_API_VERSION = "2"
#vm_box = "bento/ubuntu-16.04"
#vm_box ="ubuntu/trusty6"
vm_box = "debian/stretch64"
Vagrant.configure(VAGRANT_API_VERSION) do |config|
	if r==1
	    config.vm.define "ospf-r1-l1" do |v|
	        v.vm.box = vm_box   
	        v.vm.network "public_network",bridge:"wlp3s0"
	        v.vm.network "private_network", ip:"192.168.210.1", netmask:"255.255.0.0", virtualbox__intnet: "ospf-network-l1"
	        v.vm.hostname = "ospf-r1-l1"        
	        v.vm.provider "virtualbox" do |node|
	            node.name = "ospf router r1-l1"
	            node.cpus = 1
	            node.memory = 512
	            node.gui = false
	            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
	            node.customize ["modifyvm",:id,"--groups","/ospf"]
	        end
	        if s==1
	        	v.vm.provision "shell", 
	        	inline: "/bin/sh /vagrant/scripts/routers_part1.sh"
	        end
	      #  config.vm.provision "chef_solo" do |chef|
	      #      chef.add_recipe "apache" 
	      #  end
	    end
	    config.vm.define "ospf-r1-l2" do |v|
	        v.vm.box = vm_box
	        v.vm.network "private_network", ip:"192.168.210.2",virtualbox__intnet: "ospf-network-l1"
	        v.vm.network "private_network", ip:"192.168.221.1",virtualbox__intnet: "ospf-network-l2-1"
	        v.vm.hostname = "ospf-r1-l2"
	        v.vm.provider "virtualbox" do |node|
	            node.name = "ospf router r1-l2"
	            node.cpus = 1
	            node.memory = 512
	            node.gui = false
	            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
	            node.customize ["modifyvm",:id,"--groups","/ospf"]
	        end
	        if s==1
	        	v.vm.provision "shell", 
	        	inline: "/bin/sh /vagrant/scripts/routers_part1.sh"
	        end
	    end
	    config.vm.define "ospf-r2-l2" do |v|
	        v.vm.box = vm_box
	        v.vm.network "private_network", ip:"192.168.210.3",virtualbox__intnet: "ospf-network-l1"
	        v.vm.network "private_network", ip:"192.168.222.1",virtualbox__intnet: "ospf-network-l2-2"
	        v.vm.hostname = "ospf-r2-l2"
	        v.vm.provider "virtualbox" do |node|
	            node.name = "ospf router ri2-l2"
	            node.cpus = 1
	            node.memory = 512
	            node.gui = false
	            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
	            node.customize ["modifyvm",:id,"--groups","/ospf"]
	        end
	        if s==1
	        	v.vm.provision "shell", 
	        	inline: "/bin/sh /vagrant/scripts/routers_part1.sh"
	       	end
	    end
	    config.vm.define "ospf-r1-l3" do |v|
	        v.vm.box = vm_box
	        v.vm.network "private_network", ip:"192.168.222.2",virtualbox__intnet: "ospf-network-l2-2"
	        v.vm.network "private_network", ip:"192.168.231.1",virtualbox__intnet: "ospf-network-l3-1"
	        v.vm.hostname = "ospf-r1-l3"
	        v.vm.provider "virtualbox" do |node|
	            node.name = "ospf router r1-l3"
	            node.cpus = 1
	            node.memory = 512
	            node.gui = false
	            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
	            node.customize ["modifyvm",:id,"--groups","/ospf"]
	        end
	        if s==1
	        	v.vm.provision "shell", 
	        	inline: "/bin/sh /vagrant/scripts/routers_part1.sh"
	    	end
	    end
	end
    if c==1
        config.vm.define "ospf-c1-l1" do |v|
            v.vm.box = vm_box
            v.vm.network "private_network", ip:"192.168.210.101", netmask:"255.255.0.0", virtualbox__intnet: "ospf-network-l1"
            v.vm.hostname = "ospf-c1-l1"
            v.vm.provider "virtualbox" do |node|
                node.name = "ospf client r1-l2"
                node.cpus = 1
                node.memory = 512
                node.gui = false
                node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
                node.customize ["modifyvm",:id,"--groups","/ospf"]
            end
        end
        config.vm.define "ospf-c1-l2" do |v|
            v.vm.box = vm_box
            v.vm.network "private_network", ip:"192.168.221.101", netmask:"255.255.0.0", virtualbox__intnet: "ospf-network-l2-1"
            v.vm.hostname = "ospf-c1-l2"
            v.vm.provider "virtualbox" do |node|
                node.name = "ospf client c1-l2"
                node.cpus = 1
                node.memory = 512
                node.gui = false
                node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
                node.customize ["modifyvm",:id,"--groups","/ospf"]
            end
        end
        config.vm.define "ospf-c2-l2" do |v|
            v.vm.box = vm_box
            v.vm.network "private_network", ip:"192.168.222.101", netmask:"255.255.0.0", virtualbox__intnet: "ospf-network-l2-2"
            v.vm.hostname = "ospf-c2-l2"
            v.vm.provider "virtualbox" do |node|
                node.name = "ospf client c2-l2"
                node.cpus = 1
                node.memory = 512
                node.gui = false
                node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
                node.customize ["modifyvm",:id,"--groups","/ospf"]
            end
        end
        config.vm.define "ospf-c1-l3" do |v|
            v.vm.box = vm_box
            v.vm.network "private_network", ip:"192.168.231.101", netmask:"255.255.0.0", virtualbox__intnet: "ospf-network-l3-1"
            v.vm.hostname = "ospf-c1-l3"
            v.vm.provider "virtualbox" do |node|
                node.name = "ospf client c1-l3"
                node.cpus = 1
                node.memory = 512
                node.gui = false
                node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
                node.customize ["modifyvm",:id,"--groups","/ospf"]
            end
        end
    end
end
