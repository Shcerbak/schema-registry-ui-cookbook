default['schema-registry-ui']['packages'] = %w(unzip git)
default['schema-registry-ui']['version'] = '0.6'
default['schema-registry-ui']['checksum'] = '7c6df4327cb401312ea608bf21ca23f27077efe0cf73120c43ec8ea471f08086'
default['schema-registry-ui']['server_ip'] = node['ipaddress']
default['schema-registry-ui']['htpasswd']['path'] = '/etc/nginx/.htpasswd_schema-registry-ui'
default['schema-registry-ui']['path'] = '/opt'
