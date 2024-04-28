Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.provision "shell", inline: <<-SHELL
    # Instalación de Terraform
    sudo apt-get update
    sudo apt-get install -y gnupg software-properties-common curl
    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
    sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
    sudo apt-get update && sudo apt-get install -y terraform

    # Instalación de Ansible
    sudo apt-get install -y ansible
  SHELL
end
