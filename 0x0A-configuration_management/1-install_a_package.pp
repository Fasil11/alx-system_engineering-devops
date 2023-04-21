# install puppet-lint -v 2.5.0

package { 'puppet-lint': ensure => '2.5.0', }
 exec { 'apt-update': command => '/usr/bin/apt-get update',
 refreshonly => true, }
 exec { 'install-puppet-lint': 
 command => '/usr/bin/apt-get -y install puppet-lint',
 require => [Package['puppet-lint'],
 Exec['apt-update']], }
