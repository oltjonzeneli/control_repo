# Installs httpd
#
# 
#
# @example
#   include apache::install
class apache::install {
	package { 'install_httpd':
	  name   => 'httpd',
	  ensure => 'present',
	}

}
