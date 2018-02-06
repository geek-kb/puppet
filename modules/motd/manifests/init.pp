class motd {

	include motd::params 

  file { "/etc/profile.d/custom_motd.sh":
    path    => '/etc/profile.d/custom_motd.sh',
    ensure  => present,
    owner   => "root",
    group   => "root",
    mode    => "775",
    content => template('motd/custom_motd.sh.erb'),
  }	

}
