include_recipe 'schema-registry-ui::packages'
include_recipe 'nodejs'
include_recipe 'schema-registry-ui::install'
include_recipe 'schema-registry-ui::configure'
include_recipe 'schema-registry-ui::nginx'
