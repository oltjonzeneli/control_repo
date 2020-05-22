class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web1.puppet.vm':}
  dockeragent::node {'db1.puppet.vm':}
}
