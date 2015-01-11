class role_wordpress (
  $db_app_password,
) {
  ::profile_webserver::php { 'wordpress.local': }
  ::profile_appserver::app { 'wordpress': }
  ::profile_dbserver::db { 'wordpress':
    dbname   => 'wordpress',
    username => 'wordpress',
    password => $db_app_password,
  }
}
