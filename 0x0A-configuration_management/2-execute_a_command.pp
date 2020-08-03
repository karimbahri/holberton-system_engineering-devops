# execute command using puppy
exec { 'killmenow':
command  => 'pkill killmenow',
provider => 'shell',
}
