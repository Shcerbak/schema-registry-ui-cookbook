This cookbook installs schema-registry-ui in very basic manner.

# Usage

Modify `default['schema-registry-ui']['version']` and `default['schema-registry-ui']['checksum']` to change schema-registry-ui version.
Modify `default['schema-registry-ui']['server_ip']` if schena registry running on other server

Add `default['schema-registry-ui']['htpasswd']['users'][user_name] = password` if you want to add basic authentication

