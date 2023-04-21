#Using Puppet, install flask from pip

 exec { 'install-puppet-lint':
 command => '/usr/bin/apt-get -y install puppet-lint',
 require => [Package['puppet-lint'], Exec['apt-update']],
 }
