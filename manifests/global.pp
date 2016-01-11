# Public: Set the global default go version
#
# Usage: go::global { '1.9.0': }
class go::global($version = '1.5.2') {
  file { "${go::chgo_root}/version":
    content => "${version}\n",
    replace => true,
  }
}
