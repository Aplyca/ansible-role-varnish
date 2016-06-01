Vagrant.configure(2) do |config|
  config.vm.define "varnish.vagrant", primary: true, autostart: true do |config_machine|
      #Assigning a provider
      config_machine.vm.provider :virtualbox do |virtualbox, override|
        virtualbox.name = "Vagrant Varnish"
        #override.vm.box = "chef/centos-7.0"
	    override.vm.box = "ubuntu/trusty64"
      end

      # Asinging a provisioner
      config_machine.vm.provision :ansible, run: "always" do |provisioner|
          provisioner.playbook = "playbooks.yml"
          provisioner.extra_vars = "tests/tests.yml" if File.file?("tests/tests.yml")
          #provisioner.tags = "vars"
      end
  end
end
