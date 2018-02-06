class vim {
    file { "/etc/skel/.vimrc":
      path    => '/etc/skel/.vimrc',
      ensure  => present,
      mode    => "664",
#     content => template('motd/motd_proxy.sh.erb'),
      source  => "puppet:///modules/vim/.vimrc",
    }
    
    file { "/root/.vimrc":
      path    => '/root/.vimrc',
      ensure  => present,
      mode    => "664",
      source  => "puppet:///modules/vim/.vimrc",
    }
}
