node default {
  include ::role_base
  include "::role_${role}"
}
