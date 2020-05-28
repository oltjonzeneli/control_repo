class profile::custom_accounts {

	group { 'developer':
  	 gid => 3003,
	}
	
	group { 'ops':
 	 gid => 3004,
	}
	accounts::user { 'bob':
 	  uid      => '4001',
	  gid      => '4001',
	  group    => 'staff',
  	  shell    => '/bin/bash',
  	  password => '!!',
  	  locked   => false,
	}	

}


