class role_wordpress (
  $db_root_password = 'unsecure_default',
  $db_app_password = 'unsecure_default',
) {
  ::profile_webserver::php { 'wordpress.local': }
  ::profile_appserver::app { 'wordpress': }

  class { '::profile_dbserver':
    root_password => $db_root_password,
  }
  ::profile_dbserver::db { 'wordpress':
    dbname   => 'wordpress',
    username => 'wordpress',
    password => $db_app_password,
  }
}
