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

	 accounts::user { 'phase3':
          uid      => '5873',
          gid      => '4714',
          group    => 'phase3',
          shell    => '/bin/bash',
          comment  => 'Test account',
	  password => '$6$6CYldZC3$ht6Yv8M8PqWpNwcpZuRRCKEvqnQ7cbhDXQbtWtUaeaMvDBvXIoFEuI.5WJ9Dy6qROQHmrNI2CDV6u7TSybzdT/',
          locked   => false,
        }
	

}


