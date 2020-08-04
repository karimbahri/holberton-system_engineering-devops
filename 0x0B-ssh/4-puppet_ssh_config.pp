# config ssh to login without password
exec { '/etc/ssh/ssh_config' :
command  => 'echo "PasswordAuthentication no \nIdentityFile ~/.ssh/holberton" >> /etc/ssh/ssh_config'
path     => '/bin',
provider => 'shell',
}
