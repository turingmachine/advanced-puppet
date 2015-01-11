define profile_appserver::app {
  include ::profile_appserver

  phpfpm::pool { $name: }
}
