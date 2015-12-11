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
