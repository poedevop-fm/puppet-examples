package {
	'haproxy': ensure => 'installed',
	}
file {
	'/etc/haproxy/haproxy.cfg':
	owner => 'root',
	group => 'root',
	mode => '644',
	source => 'puppet:///modules/haproxy/haproxy.cfg',
}
service {
	'haproxy': ensure => 'running',
}
