# config ssh to login without password
exec { '/etc/ssh/ssh_config':
path     => '/bin',
command  => 'echo "IdentityFile ~/.ssh/holberton\nPasswordAuthentication no" >> /etc/ssh/ssh_config'
provider => 'shell',
}
