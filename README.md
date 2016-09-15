# Description

This cookbook installs schema-registry-ui in very basic manner.

# Usage

Modify `default['schema-registry-ui']['version']` and `default['schema-registry-ui']['checksum']` to change schema-registry-ui version.
Modify `default['schema-registry-ui']['server_ip']` if schena registry running on other server

Add `default['schema-registry-ui']['htpasswd']['users'][user_name] = password` if you want to add basic authentication


# Requirements

## Platform:

* debian

## Cookbooks:

* nginx
* htpasswd
* nodejs

# Attributes

* `node['schema-registry-ui']['packages']` -  Defaults to `%w(unzip git)`.
* `node['schema-registry-ui']['version']` -  Defaults to `0.6`.
* `node['schema-registry-ui']['checksum']` -  Defaults to `7c6df4327cb401312ea608bf21ca23f27077efe0cf73120c43ec8ea471f08086`.
* `node['schema-registry-ui']['server_ip']` -  Defaults to `node['ipaddress']`.
* `node['schema-registry-ui']['htpasswd']['path']` -  Defaults to `/etc/nginx/.htpasswd_schema-registry-ui`.
* `node['schema-registry-ui']['path']` -  Defaults to `/opt`.

# Recipes

* schema-registry-ui::configure
* schema-registry-ui::default
* schema-registry-ui::install
* schema-registry-ui::nginx
* schema-registry-ui::packages

# License and Maintainer

Maintainer:: Shcerbak (<shcerbak@gmail.com>)
Source:: https://github.com/shcerbak/schema-registry-ui-cookbook
Issues:: https://github.com/shcerbak/schema-registry-ui-cookbook/issues

License:: apache 2
