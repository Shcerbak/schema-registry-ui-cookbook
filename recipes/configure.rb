version = node['schema-registry-ui']['version']
path = node['schema-registry-ui']['path']

template "#{path}/schema-registry-ui-#{version}/src/env.js" do
  source 'env.js.erb'
  owner 'root'
  group 'root'
  mode '0644'

  notifies :restart, 'service[nginx]', :delayed
end

execute 'npm_install_bower' do
  command 'npm install -g bower'
  cwd "#{path}/schema-registry-ui/"
  action :run

  not_if { File.directory?("#{path}/schema-registry-ui/bower_components") }
end

execute 'bower_install' do
  command 'bower install --allow-root'
  cwd "#{path}/schema-registry-ui/"
  action :run

  not_if { File.directory?("#{path}/schema-registry-ui-#{version}/bower_components") }
end
