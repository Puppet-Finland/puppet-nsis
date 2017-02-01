# == Class: nsis
#
# This class sets up nsis
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage nsis using Puppet. Valid values are true (default) 
#   and false.
# [*ensure*]
#   Status of nsis. Valid values are 'present' (default) and 'absent'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class nsis
(
    Boolean                  $manage = true,
    Enum['present','absent'] $ensure = 'present'

) inherits nsis::params
{

if $manage {
    class { '::nsis::install':
        ensure => $ensure,
    }
}
}
