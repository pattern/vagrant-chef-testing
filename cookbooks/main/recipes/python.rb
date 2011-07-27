node[:ubuntu_python_packages].each do |pkg|
  package pkg do
    :upgrade
  end
end

# System-wise packages isntalled by pip
# Careful: most Python stuff should be in a virtualenv

node[:pip_python_packages].each_pair do |pkg, version|
  execute "install-#{pkg}" do
    command "pip install #{pkg}==#{version}"
    not_if "[ `pip freeze | grep #{pkg} | cur -d'=' -f3` = '#{version}' ]"
  end
end