include_recipe 'nginx'

users = node['schema-registry-ui']['htpasswd']['users']

if users.nil?
  file node['schema-registry-ui']['htpasswd']['path'] do
    action :delete
  end
else
  users.each_pair do |name, opts|
    htpasswd node['schema-registry-ui']['htpasswd']['path'] do
      user name
      password opts
    end
  end
end

template ::File.join(node['nginx']['dir'], 'sites-available', 'schema-registry-ui') do
  source 'schema-registry-ui.conf.erb'
  notifies :reload, 'service[nginx]'
  variables(:use_auth_basic => users || false)
end

nginx_site 'schema-registry-ui'
