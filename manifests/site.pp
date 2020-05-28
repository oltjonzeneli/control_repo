node master.puppet.vm {
   include role::master_server
   file {'/etc/secret_password.txt':
	ensure => file,
	content => lookup ('secret_password')
	}	
}

node /^web/                                                 { include role::app_server }
node /^db/                                                  { include role::db_server }
node client.puppet.vm 					    { include role::app_server}
