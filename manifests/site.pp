node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a Readme',
    owner => 'root',
  }
  
  notify { 'This is a production environment':
  }
}

node /^web/                                                 { include role::app_server }
node /^db/                                                  { include role::db_server }
