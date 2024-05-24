Vagrant.configure("2") do |config|
    config.vm.box = "geerlingguy/ubuntu2004"
  
    # Forward the ports from the Vagrant VM to the host machine
    config.vm.network "forwarded_port", guest: 5000, host: 5000
    config.vm.network "forwarded_port", guest: 3000, host: 3000
  end