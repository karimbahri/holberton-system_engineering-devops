# strace is your friend
exec { 'conf':
    path    => '/usr/local/bin/:/bin',
    command => sed -i 's/.phpp/.php/g' /var/www/html/wp-settings.php,
}
