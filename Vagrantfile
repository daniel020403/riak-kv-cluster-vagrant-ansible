Vagrant.configure(2) do |config|

    (1..5).each do |i|
        config.vm.define "riak0#{i}" do |node|
            node.vm.box         = "ubuntu/bionic64"
            
            node.vm.hostname    = "riak0#{i}"
            node.vm.network "private_network", ip: "192.168.33.1#{i}"

            node.vm.provider "virtualbox" do |v|
                v.memory    = 512
                v.cpus      = 1
            end

            if i == 5
                node.vm.provision "ansible" do |ansible|
                    ansible.limit           = "all"
                    ansible.inventory_path  = "provision/inventory/"
                    ansible.playbook        = "provision/playbook/playbook.yaml"
                end
            end
        end
    end

end