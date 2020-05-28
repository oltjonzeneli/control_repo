# installs nginx
#
# A description of what this class does
#
# @example
#   include nginx::install
class nginx::install {
        package { 'install_nginx':
          name   => 'nginx',
          ensure => 'present',
        }

}
