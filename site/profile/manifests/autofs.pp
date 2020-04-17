class profile::autofs {
  
 package {'nfs-utils':
            ensure => installed,
        }
 
        file { '/mnt/nfs':
            ensure => directory,
        }
        mount { '/mnt/nfs':
            ensure => mounted,
            atboot => true,
            device => "192.168.32.182:/var/nfsshare",
            fstype => 'nfs',
            options => 'rw',
          
    }
}
