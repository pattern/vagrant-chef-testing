directory "/home/songed/sites/" do
  owner "songed"
  group "songed"
  mode 0775
end

virtualenv "/home/songed/sites/songed.com" do
  owner "songed"
  group "songed"
  mode 0775
end

directory "/home/songed/sites/songed.com/run" do
  owner "songed"
  group "songed"
  mode 0775
end

git "/home/docs/sites/songed.com/checkouts/songed.com" do
  repository "git://github.com/pattern/simple-django-app.git"
  reference "HEAD"
  user "songed"
  group "songed"
  action :sync
end

script "Install Requirements" do
  interpreter "bash"
  user "songed"
  group "songed"
  code <<-EOH
  /home/songed/sites/songed.com/bin/pip install -r /home/songed/sites/songed.com/checkouts/simple-django-app/deploy_requirements.txt
  EOH
end

