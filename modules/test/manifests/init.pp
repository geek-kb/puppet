class test {
	include test::params

	file { "/root/test" :
		path => "/root/test",
		ensure => present,
		mode => 755,
		owner => root,
		source  => "puppet:///modules/test/testfile",
	}

	file_line { "using vars" :
		ensure => present,
		line => "Who configured this server? ${::test::params::firstName} ${::test::params::lastName}",
		path => "/root/test",
		require => File['/root/test']
	}
}
