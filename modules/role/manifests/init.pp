class role {
	exec { 'run_facter_roles' :
		command => "/etc/facter/facts.d/facter_roles.sh",		
	}
}
