$packages = ['tree', 'htop', 'vim', 'telnet']
		
class package {
	if $::operatingsystem == 'Ubuntu' {
	  exec { 'apt_update' :
	    command => "sudo /usr/bin/apt update",
	    user => 'root'
	  }
		package { $packages :
			ensure => present,
			state => installed,
			require => Exec['apt_update']
		}
	}
	package { $packages :
    ensure => present,
		state => installed
	}
}
