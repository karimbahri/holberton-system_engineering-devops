# manifest
exec { 'limit':
  path    => ['/bin'],
  command => 'sed -i \'s/^ULIMIT=.*/ULIMIT="-n 4096"/g\' /etc/default/nginx',
}

-> exec { 'reload':
  command => 'nginx restart',
  path    => '/etc/init.d',
}
