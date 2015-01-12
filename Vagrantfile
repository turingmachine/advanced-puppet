Vagrant.configure("2") do |config|
  config.vm.provision "shell", 
    inline: 'ls -d /vagrant/{manifests,roles,profiles} |' +
            'xargs -n 1 puppet-lint; true'
  config.vm.provision "puppet" do |puppet|
    config.vm.box      = 'centos'
    config.vm.box_url  = 'http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20131103.box'
    config.vm.hostname = 'puppet-dev.local'
    config.vm.network :forwarded_port, host: 8888, guest: 80
    puppet.manifests_path = "manifests"
    puppet.module_path = ['roles','profiles','modules']
    puppet.hiera_config_path = "hiera.yaml"
    puppet.facter = {
      'role' => 'wordpress',
    }
    puppet.options = "--verbose --environment development"
  end
end

