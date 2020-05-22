node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a Readme',
    owner => 'root',
  }
}

node 'master.puppet.vm'                                     { include role::master_server }
