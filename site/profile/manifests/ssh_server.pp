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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDL9HnFdHquv/QbUGHbGbd2Uafuqhy6kq7tBmEFh8ozcxpXleqNtBRsbCB88HBb7EArp+wHItg7Laj9rBUwFi3RUg9143iHZN753i4268H7NB+u0Z1B6TJBMSW/7KBZCIyzmYxZqIuHb6jW5tUlTRX6dXK4a7/aFxzkqEzBYl7iaEHLLHRMV+d9Tujmb4wuJetfhsFI3WL0UTBYnkS2CrBvmJAqG7/QjBuPCXnl0RurLvUeaXSkdx66Cex407Fbkub+kT9DwVaGWxN5vuW2MzvTO0zR1493rbpGrUEdche0KltjxXP2DMCCg//TWpXdDvwCANF50VQ1NDjW0LPEhGFR',
	}  
}
