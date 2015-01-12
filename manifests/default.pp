notify{"We are up and running!":}
node 'puppet-dev.local' {
  class { '::role_wordpress':
    db_root_password => 'yachtokibNie',
    db_app_password => 'whaiwimbyrie',
  }
}
