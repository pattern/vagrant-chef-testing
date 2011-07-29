Vagrant::Config.run do |config|
  config.vm.box = "lucid64"
  config.vm.forward_port "http", 80, 8080
  
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe("main::default")
    chef.add_recipe("main::python")
    chef.add_recipe("main::simple-django-app")
    chef.json = {
      :base_packages => ["git-core", "bash-completion"],
      :ubuntu_python_packages => ["python-setuptools", "python-pip", "python-dev", "libpq-dev"],
      :pip_python_packages => {"virtualenv" => "1.6.4", "mercurial" => "1.9"},
      :users => {
        "simpledjango" => {
          "id" => 1001,
          "full_name" => "Simple Django User",
          "key" => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAzg9AkRYHX7vIHi7yT3M5b0ePtoZYBCKaWW775tik8x2RO6yjDbA0k/pTxmrEQZ0FiYxFsoT80WCETR6klW79KPMpFj40Bg8xZYGC0PvRYPFv+5AuTGJc2ybm6RNpHxsGDNKtC5sA2vULLsP8JRjSx2UEc8AfSr9SzQwg3u+kA8/Io78B3BYJTzTWzS5EpSeYNlzVVzL1PY9/ntCHRdWA/MGYIYXUl7saYPLPw4HauplYAGZ7mG+0jaK3ud9kegwugLzYjXbjTcwPLgMGcKNCe4D1k+hudYgYqXZ5+lAjPYI6NyyU4vnmnevUOdW8VLBUs/PjtDM26xi8Wu/rw5jt3Q== pickelman@gmail.com"
        }
      },
      :groups => {
        "songed" => {
          "gid" => 201,
          "members" => ["simpledjango"]
        }
      }
    }
  end


  #   chef.add_recipe "mysql"
  #   chef.add_role "web"
  #
  #   # You may also specify custom JSON attributes:
  #   chef.json.merge!({ :mysql_password => "foo" })
  # end

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  # config.vm.box_url = "http://domain.com/path/to/above.box"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Assign this VM to a host only network IP, allowing you to access it
  # via the IP.
  # config.vm.network "33.33.33.10"
end
