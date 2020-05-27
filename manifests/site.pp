node default {
<<<<<<< HEAD
}
node 'master2.puppet.vm' {
   include role::master_server
    file {'/etc/secret_password.txt':
        ensure => file,
        content => lookup ('secret_password'),
    }
  }
node 'minetest.puppet.vm'  {include role::minecraft_server}

node /^web/ {
    include role::app_server
 }
 
 node /^db/ {
    include role::db_server
 }

node master.puppet.vm {
   include role::master_server
}
=======
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
>>>>>>> a65d8544fb597be7118caa8abb85db12637699f9
