node 'agent1' {
	file { '/tmp/hello' :
	   content => "Hello, world\n",
	}
} 
