import "nodes.pp"
$puppetserver="puppet"

# Configuration du Filebucket
filebucket { "main":
	  	server => puppet,
  		path   => false,
	   }

File { backup => main }
