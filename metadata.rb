name             'schema-registry-ui'
maintainer       'Shcerbak'
maintainer_email 'shcerbak@gmail.com'
license          'apache 2'
description      'Install schema-registry ui'
long_description 'Install schema-registry ui'
issues_url       'https://github.com/shcerbak/schema-registry-ui-cookbook/issues' if respond_to?(:issues_url)
source_url       'https://github.com/shcerbak/schema-registry-ui-cookbook' if respond_to?(:source_url)
version          '0.1.0'

depends 'nginx'
depends 'htpasswd'
depends 'nodejs'

supports 'debian'
