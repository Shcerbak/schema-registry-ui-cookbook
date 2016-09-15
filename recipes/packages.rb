node['schema-registry-ui']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end
