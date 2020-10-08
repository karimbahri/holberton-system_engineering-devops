# manifest
exec { 'limit':
  path    => ['/bin'],
  command => 'sudo sed -i "s/15/3000/g" /etc/default/nginx',
}

-> exec { 'reload':
  command => 'nginx restart',
  path    => '/etc/init.d',
}
