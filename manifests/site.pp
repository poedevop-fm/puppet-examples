node 'agent1' {
	file { '/tmp/hello' :
	   content => "Hello, world\n",
	}
} 
node 'agent2' {
        file { '/tmp/hello' :
           content => "Hello, world\n",
        }
}
