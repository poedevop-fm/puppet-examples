node 'artifactory' {
	file { '/tmp/hello' :
	   content => "Hello, world\n",
	}
} 
