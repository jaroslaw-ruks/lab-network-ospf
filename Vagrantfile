VAGRANT_API_VERSION = "2"
Vagrant.configure(VAGRANT_API_VERSION) do |config|
    config.vm.define "ospf_external" do |r1|
        r1.vm.box = "bento/ubuntu-16.10"
        r1.vm.network "public_network",bridge:"wlp3s0"
        r1.vm.network "private_network", ip:"192.168.56.101",virtualbox__intnet: "ospf_network_l1"
        r1.vm.provider "virtualbox" do |node|
            node.name = "ospf router extneral"
            node.cpus = 1
            node.memory = 1024
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end
    config.vm.define "ospf_internal" do |r2|
        r2.vm.box = "bento/ubuntu-16.10"
        r2.vm.network "private_network", ip:"192.168.56.150",virtualbox__intnet: "ospf_network_l1"
        r2.vm.network "private_network", ip:"192.168.57.150",virtualbox__intnet: "ospf_network_l2"
        r2.vm.provider "virtualbox" do |node|
            node.name = "ospf router internal"
            node.cpus = 1
            node.memory = 1024
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end
    config.vm.define "ospf_client_l1" do |c1|
        c1.vm.box = "bento/ubuntu-16.10"
        c1.vm.network "private_network", ip:"192.168.56.102",virtualbox__intnet: "ospf_network_l1"
        c1.vm.provider "virtualbox" do |node|
            node.name = "ospf client l1"
            node.cpus = 1
            node.memory = 1024
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end
    config.vm.define "ospf_client_l2" do |c2|
        c2.vm.box = "bento/ubuntu-16.10"
        c2.vm.network "private_network", ip:"192.168.56.102",virtualbox__intnet: "ospf_network_l2"
        c2.vm.provider "virtualbox" do |node|
            node.name = "ospf client l2"
            node.cpus = 1
            node.memory = 1024
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end
end
