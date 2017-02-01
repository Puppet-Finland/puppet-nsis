#
# == Class: nsis::params
#
# Defines some variables based on the operating system
#
class nsis::params {

    case $::osfamily {
        'RedHat': {
            $package_name = 'nsis'
            $package_provider = undef
        }
        'Debian': {
            $package_name = 'nsis'
            $package_provider = undef
        }
        'windows': {
            $package_name = 'nsis'
            $package_provider = 'chocolatey'
        }

        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
