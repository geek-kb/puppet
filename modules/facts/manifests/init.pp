class facts { 
  file{["/etc/facter", "/etc/facter/facts.d"]:
    ensure => "directory",
  }

  file{"/etc/facter/facts.d/custom_facts.sh":
    ensure => "present",
    source => "puppet:///modules/facts/custom_facts.sh",
    mode => "744",
  }
 
  file{"/etc/facter/facts.d/facter_roles.sh":
    ensure => "present",
    source => "puppet:///modules/facts/facter_roles.sh",
    mode => "744",
  }
  
#  file{"/etc/facter/facts.d/facter_vlans.sh":
#    ensure => "present",
#    source => "puppet:///modules/facts/facter_vlans.sh",
#    mode => "744",
#  }
#	file{"/etc/mcollective/clients":
#		ensure	=> directory,
#		recurse	=> true
#	}
 }
