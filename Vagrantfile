Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.box_version = "1.1.0"
  config.vm.provision "file", source: "./scripts/server-stats.sh", destination: "~/server-stats.sh"
  config.vm.provision "shell", path: "scripts/setup.sh"
end
