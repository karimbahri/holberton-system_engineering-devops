# create a file in /tmp using puppet
file { '/tmp/holberton':
owner   => 'www-data',
mode    => '0744',
group   => 'www-data',
content => 'I love Puppet',
}
