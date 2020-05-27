class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  host {'web.puppet.vm':
    ensure => present,
    ip     =>'172.18.0.2',
    }
  host {'db.puppet.vm':
    ensure => present,
    ip     => '172.18.0.3',
    }
  dockeragent::node {'web1.puppet.vm':}
  dockeragent::node {'db1.puppet.vm':}
}
