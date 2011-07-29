directory "/home/simpledjango/sites/" do
  owner "simpledjango"
  group "simpledjango"
  mode 0775
end

virtualenv "/home/simpledjango/sites/simpledjango" do
  owner "simpledjango"
  group "simpledjango"
  mode 0775
end

directory "/home/simpledjango/sites/simpledjango/run" do
  owner "simpledjango"
  group "simpledjango"
  mode 0775
end

git "/home/docs/sites/simpledjango/checkouts/simpledjango" do
  repository "git://github.com/pattern/simple-django-app.git"
  reference "HEAD"
  user "simpledjango"
  group "simpledjango"
  action :sync
end

script "Install Requirements" do
  interpreter "bash"
  user "simpledjango"
  group "simpledjango"
  code <<-EOH
  /home/simpledjango/sites/simpledjango/bin/pip install -r /home/simpledjango/sites/simpledjango/checkouts/simpledjango/simple-django-app/deploy_requirements.txt
  EOH
end

