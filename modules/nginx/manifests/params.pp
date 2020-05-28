# stores OS specific parameters
#
#
# @example
#   include nginx::params
class nginx::params {
	$package_name = 'nginx'
	$service_name = 'nginx'
	
	case $::osfamily {
	'RedHat': {
	$config_path = '/etc/nginx/nginx.conf'
	$config_source= 'puppet:///modules/nginx/rh-nginx.conf'	
	}

	'Debian': {
        $config_path = '/etc/nginx/nginx.conf'
        $config_source= 'puppet:///modules/nginx/deb-nginx.conf'
        }	
    }
}
