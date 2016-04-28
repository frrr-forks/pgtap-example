Vagrant.require_version '>= 1.8.4'

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.define 'pgtap', primary: true do |box|
    box.vm.hostname = 'pgtap'
    box.vm.network :private_network, ip: '10.0.0.11'
    box.vm.network :forwarded_port, guest: 22, host: 2211, id: 'ssh'
  end
end
