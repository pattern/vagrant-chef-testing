directory "/home/simpledjango/sites/" do
  owner "simpledjango"
  group "simpledjango"
  mode 0775
end

virtualenv "/home/simpledjango/sites/simple-django-application" do
  owner "simpledjango"
  group "simpledjango"
  mode 0775
end

directory "/home/simpledjango/sites/simple-django-application/run" do
  owner "simpledjango"
  group "simpledjango"
  mode 0775
end

directory "/home/simpledjango/sites/simple-django-application/checkouts" do
  owner "simpledjango"
  group "simpledjango"
  mode 0775
end

directory "/home/simpledjango/sites/simple-django-application/checkouts/simple-django-application" do
  owner "simpledjango"
  group "simpledjango"
  mode 0775
end

git "/home/simpledjango/sites/simple-django-application/checkouts/simple-django-application" do
  repository "git://github.com/pattern/simple-django-application.git"
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
  /home/simpledjango/sites/simple-django-application/bin/pip install -r /home/simpledjango/sites/simple-django-application/checkouts/simple-django-application/deploy_requirements.txt
  EOH
end

