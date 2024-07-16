Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.define :server do |server_config|
    server_config.vm.host_name = "gitlab-server"
    server_config.vm.network "private_network", ip: "192.168.56.10"
    server_config.vm.provider :virtualbox do |vb|
        vb.memory=4096
        vb.cpus=4
    end
  end

  config.vm.define :runner do |runner_config|
    runner_config.vm.host_name = "gitlab-runner"
    runner_config.vm.network "private_network", ip: "192.168.56.26"
    runner_config.vm.provider :virtualbox do |vb|
        vb.memory=4096
        vb.cpus=4
    end
  end      
end