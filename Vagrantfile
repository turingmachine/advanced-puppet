Vagrant.configure("2") do |config|
  config.vm.provision "puppet" do |puppet|
    config.vm.box      = 'centos'
    config.vm.box_url  = 'http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20131103.box'
    config.vm.hostname = 'puppet-dev.local'
    config.vm.network :forwarded_port, host: 8888, guest: 80
    puppet.manifests_path = "manifests"
    puppet.module_path = ['roles','profiles','modules']
    puppet.options = "--verbose"
  end
end

