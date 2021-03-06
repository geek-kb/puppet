class apache {
	case $::operatingsystem {
   'RedHat', 'CentOS', 'Scientific', 'OracleLinux', 'OEL': {
			package { 'httpd' :
				ensure => installed
			}

			service { 'httpd' :
				ensure => running,
				hasstatus => true,
				hasrestart => true,
				enable => true,
				require => Package['httpd']
			}
	}
   'Ubuntu', 'ubuntu', 'Debian', 'debian': {
			package { 'apache2' :
				ensure => installed
			}

			service { 'apache2' :
				ensure => running,
				hasstatus => true,
				hasrestart => true,
				enable => true,
				require => Package['apache2']
			}
		}
	}
}
