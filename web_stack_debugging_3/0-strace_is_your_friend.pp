# Puppet manifest to fix missing wp-config.php for Apache (500 error)

exec { 'fix-wordpress':
  command => '/bin/cp /var/www/html/wp-config.php.bak /var/www/html/wp-config.php',
  creates => '/var/www/html/wp-config.php',
}

