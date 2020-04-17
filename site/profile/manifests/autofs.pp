class profile::autofs {
  
  package {'nfs-utils':
        ensure => installed,
        allow_virtual => false,
    }
 
    service {['nfs','rpcbind']:
        ensure => running,
        require => Package['nfs-utils'],
    }
 
    exec {'/usr/sbin/exportfs -ra':
        refreshonly => true
    }
 
    file {'/var/share':
        ensure => directory,
    }
 
    file {'/var/readonly':
        ensure => directory,
    }
 
    file_line {'export share':
        path => '/etc/exports',
        line => '/var/share -rw,sync,no_root_squash 10.0.0.0/8',
        match => '^/var/share',
        require => Service['nfs','rpcbind'],
        notify => Exec['/usr/sbin/exportfs -ra'],
    }
 
    file_line {'export readonly':
        path => '/etc/exports',
        line => '/var/readonly -ro,sync,no_root_squash 10.0.0.0/8',
        match => '^/var/readonly',
        require => Service['nfs','rpcbind'],
        notify => Exec['/usr/sbin/exportfs -ra'],
    }
}
