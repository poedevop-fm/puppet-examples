<<<<<<< HEAD
package {
	'haproxy': ensure => 'installed',
	}
file {
	'/etc/haproxy/haproxy.cfg':
	owner => 'root',
	group => 'root',
	mode => '644',
	source => 'puppet:///modules/haproxy/etc/haproxy/haproxy.cfg',
}
service {
	'haproxy': ensure => 'running',
}
=======
$packages = [ 'net-tools',
	      'epel-release',
	      'nmap',
	      'iotop', 
    	      'iftop',
	    ]

package {
	  $packages:
	  ensure => 'installed'
	}
>>>>>>> fabebc8d1c99b086e7fbf11576a8519e09c90f71
