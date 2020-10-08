# manifest
exec { 'manifest':
path    => ['/bin'],
command => "sudo sed -i 's/ULIMIT=/#ULIMIT=/g' /etc/default/nginx",
}

-> exec { 'reload':
command => 'nginx restart',
path    => '/etc/init.d',
}
