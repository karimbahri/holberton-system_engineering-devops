# config ssh to login without password
exec { '/etc/ssh/ssh_config' :
command  => 'echo "IdentityFile ~/.ssh/holberton\nPasswordAuthentication no" >> /etc/ssh/ssh_config'
path     => '/bin',
provider => 'shell',
}
