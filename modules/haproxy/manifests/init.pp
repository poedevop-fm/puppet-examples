class  haproxy::install {
        package { "haproxy":
                name => $operatingsystem ? {
                        /(Red Hat|CentOS|Fedora)/ => "haproxy",
                        Ubuntu => "haproxy",
                        default=> "haproxy"
                 },
                 ensure => latest,
        }
}

class haproxy::config {
        file {"/etc/haproxy/haproxy.cfg":
                        ensure => present,
                        owner  => 'root',
                        group  => 'root',
                        mode   => 0600,
                        source => "puppet:///modules/haproxy/haproxy.cfg",
                        require=> Class["haproxy::install"],
                        notify => Class["haproxy::service"],
        }
}

class haproxy::service {
        service { "haproxy":
                        name => $operatingsystem ? {
                           /(Red Hat|CentOS|Fedora)/ => "haproxy",
                           Ubuntu => "haproxy",
                           default=> "haproxy"
                        },
                        ensure     => running,
                        hasstatus  => true,
                        hasrestart => true,
                        enable     => true,
                        require    => Class["haproxy::config"],
        }
}

class haproxy {
        include haproxy::install, haproxy::config, haproxy::service
}
