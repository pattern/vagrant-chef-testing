Vagrant::Config.run do |config|
  config.vm.box = "lucid64"
  config.vm.forward_port "http", 80, 8080
  config.vm.network "10.10.10.10"
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe("main")
    chef_json = JSON.parse(File.read(File.dirname(__FILE__) + "/node.json"))
    recipes = chef_json.delete("recipes")
    recipes.each do |recipe|
      chef.add_recipe(recipe)
    end
    chef.json = chef_json
  end
end
    
    # chef.json = {
    #   :base_packages => ["git-core", "bash-completion"],
    #   :ubuntu_python_packages => [
    #     "python-setuptools",
    #     "python-pip",
    #     "python-dev",
    #     "libpq-dev"
    #   ],
    #   :pip_python_packages => {
    #     "virtualenv" => "1.6.4",
    #     "mercurial" => "1.9"
    #   },
    #   :users => {
    #     "simpledjango",
    #     {
    #       :id => 1010,
    #       :full_name => "Simple Django User",
    #       :key => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAzg9AkRYHX7vIHi7yT3M5b0ePtoZYBCKaWW775tik8x2RO6yjDbA0k/pTxmrEQZ0FiYxFsoT80WCETR6klW79KPMpFj40Bg8xZYGC0PvRYPFv+5AuTGJc2ybm6RNpHxsGDNKtC5sA2vULLsP8JRjSx2UEc8AfSr9SzQwg3u+kA8/Io78B3BYJTzTWzS5EpSeYNlzVVzL1PY9/ntCHRdWA/MGYIYXUl7saYPLPw4HauplYAGZ7mG+0jaK3ud9kegwugLzYjXbjTcwPLgMGcKNCe4D1k+hudYgYqXZ5+lAjPYI6NyyU4vnmnevUOdW8VLBUs/PjtDM26xi8Wu/rw5jt3Q== pickelman@gmail.com"
    #     }
    #   },
    #   :groups => {
    #     "simpledjango" => {
    #       "gid" => 201,
    #       "members" => ["simpledjango"]
    #     }
    #   }
    # }

