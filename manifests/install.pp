# == Class: nsis::install
#
# This class installs nsis
#
class nsis::install
(
    $ensure

) inherits nsis::params
{
    package { $::nsis::params::package_name:
        ensure   => $ensure,
        provider => $::nsis::params::package_provider,
    }
}
