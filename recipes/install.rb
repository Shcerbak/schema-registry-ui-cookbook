sr_zip = ::File.join(Chef::Config[:file_cache_path], 'schema-registry-ui.zip')
version = node['schema-registry-ui']['version']
path = node['schema-registry-ui']['path']

remote_file sr_zip do
  owner 'root'
  group 'root'
  mode '0644'
  source "https://github.com/Landoop/schema-registry-ui/archive/v#{version}.zip"
  checksum node['schema-registry-ui']['checksum']

  notifies :run, 'execute[unzip]', :immediately
end

execute 'unzip' do
  command "unzip #{sr_zip} -d #{path}"

  not_if { File.exist?("#{path}/schema-registry-ui-#{version}/src/env.js") }
end

link "#{path}/schema-registry-ui" do
  to "#{path}/schema-registry-ui-#{version}"
end
