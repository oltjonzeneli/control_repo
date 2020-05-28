class role::db_server {
  include profile::base
  include profile::db
  include profile::accounts
  include profile::custom_accounts
}
