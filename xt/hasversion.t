#!/usr/bin/perl

# Test that all modules have a version number

use strict;
use warnings;

# BEGIN {
#   $|  = 1;
#   $^W = 1;
# }

# my @MODULES = qw( Test::HasVersion );

use Test::More;

# TODO Enable when there are `.pm` files
plan( skip_all => 'No `.pm` files' );

# # Load the testing modules
# foreach my $MODULE ( @MODULES ) {
#   eval "use $MODULE";
#   if ( $@ ) {
#     $ENV{RELEASE_TESTING}
#       ? die( "Failed to load required release-testing module $MODULE" )
#       : plan( skip_all => "$MODULE not available for testing" );
#   }
# }

# all_pm_version_ok();
