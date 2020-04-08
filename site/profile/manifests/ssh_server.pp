class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDHXqtQEwrq8mbE6w89/wU2j/y7+whCiwkbsGnlCbyjK4W3xNsJ2RUw8hevjCGneoLtClT+JO/D2U1iyHZaIZytUfODWXz2AKmOmnOnBeYx95frSgNVCDVFBTIApfLACCbj0LzLvwaBUqQMPD5oKTaK02Y7Y3Zx+bW8Dax0VvaEpel/uCtR9wMK5f/0yBVJtZJ3DpcztL7TSAO0ofyI7uYAmXas66UFcKQtptdMbiAlnbNqSPdahLea1g8NXTlchxDhhoI6ATEHr0e1+NmWn1rEgzsD63jM+KO6YAgtSbR9SPjtdsk/eXpXoXd0xb58ox/1THBNJQS5Os55O2u5DSO1',
	}  
}
