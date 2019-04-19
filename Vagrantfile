VAGRANT_API_VERSION = "2"
Vagrant.configure(VAGRANT_API_VERSION) do |config|
    config.vm.define "ospf_r1_l1" do |r1_l1|
        r1_l1.vm.box = "bento/ubuntu-16.10"
        r1_l1.vm.network "public_network",bridge:"wlp3s0"
        r1_l1.vm.network "private_network", ip:"192.168.210.1",virtualbox__intnet: "ospf_network_l1"
        r1_l1.vm.provider "virtualbox" do |node|
            node.name = "ospf router r1_l1"
            node.cpus = 1
            node.memory = 512
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end
    config.vm.define "ospf_r1_l2" do |r1_l2|
        r1_l2.vm.box = "bento/ubuntu-16.10"
        r1_l2.vm.network "private_network", ip:"192.168.210.2",virtualbox__intnet: "ospf_network_l1"
        r1_l2.vm.network "private_network", ip:"192.168.221.1",virtualbox__intnet: "ospf_network_l2_1"
        r1_l2.vm.provider "virtualbox" do |node|
            node.name = "ospf router r1_l2"
            node.cpus = 1
            node.memory = 512
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end
    config.vm.define "ospf_r2_l2" do |r2_l2|
        r2_l2.vm.box = "bento/ubuntu-16.10"
        r2_l2.vm.network "private_network", ip:"192.168.210.3",virtualbox__intnet: "ospf_network_l1"
        r2_l2.vm.network "private_network", ip:"192.168.222.1",virtualbox__intnet: "ospf_network_l2_2"
        r2_l2.vm.provider "virtualbox" do |node|
            node.name = "ospf router ri2_l2"
            node.cpus = 1
            node.memory = 512
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end
    config.vm.define "ospf_r1_l3" do |r1_l3|
        r1_l3.vm.box = "bento/ubuntu-16.10"
        r1_l3.vm.network "private_network", ip:"192.168.222.2",virtualbox__intnet: "ospf_network_l2_2"
        r1_l3.vm.network "private_network", ip:"192.168.231.1",virtualbox__intnet: "ospf_network_l3_1"
        r1_l3.vm.provider "virtualbox" do |node|
            node.name = "ospf router r1_l3"
            node.cpus = 1
            node.memory = 512
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end
   config.vm.define "ospf_client_c1_l1" do |c1_l1|
        c1_l1.vm.box = "bento/ubuntu-16.10"
        c1_l1.vm.network "private_network", ip:"192.168.210.101",virtualbox__intnet: "ospf_network_l1"
        c1_l1.vm.provider "virtualbox" do |node|
            node.name = "ospf client r1_l2"
            node.cpus = 1
            node.memory = 512
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end
    config.vm.define "ospf_client_c1_l2" do |c1_l2|
        c1_l2.vm.box = "bento/ubuntu-16.10"
        c1_l2.vm.network "private_network", ip:"192.168.221.101",virtualbox__intnet: "ospf_network_l2_1"
        c1_l2.vm.provider "virtualbox" do |node|
            node.name = "ospf client c1_l2"
            node.cpus = 1
            node.memory = 512
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end
    config.vm.define "ospf_client_c2_l2" do |c2_l2|
        c2_l2.vm.box = "bento/ubuntu-16.10"
        c2_l2.vm.network "private_network", ip:"192.168.222.101",virtualbox__intnet: "ospf_network_l2_2"
        c2_l2.vm.provider "virtualbox" do |node|
            node.name = "ospf client c2_l2"
            node.cpus = 1
            node.memory = 512
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end
    config.vm.define "ospf_client_c1_l3" do |c1_l3|
        c1_l3.vm.box = "bento/ubuntu-16.10"
        c1_l3.vm.network "private_network", ip:"192.168.231.101",virtualbox__intnet: "ospf_network_l3_1"
        c1_l3.vm.provider "virtualbox" do |node|
            node.name = "ospf client c1_l3"
            node.cpus = 1
            node.memory = 512
            node.gui = false
            node.customize ["storageattach", :id, "--storagectl", "SATA Controller", "--port", "0", "--device", "0", "--nonrotational", "on"]
            node.customize ["modifyvm",:id,"--groups","/ospf"]
        end
    end

end
