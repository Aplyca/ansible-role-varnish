Vagrant.configure(2) do |config|
  config.vm.define "varnish.vagrant", primary: true, autostart: true do |config_machine|
      #Assigning a provider
      config_machine.vm.provider :virtualbox do |virtualbox, override|
          virtualbox.name = "Vagrant Varnish"
		  #override.vm.box = "chef/centos-7.0"
		  override.vm.box = "ubuntu/trusty64"

		  # Configuring network
          override.vm.network "forwarded_port", guest: 6081, host: 6081, auto_correct: true
      end

      # Asinging a provisioner
      config_machine.vm.provision :ansible, run: "always" do |provisioner|
        provisioner.playbook = "build/playbook.yml"
        provisioner.extra_vars = "build/settings.yml" if File.file?("settings.yml")
      end
  end
end
