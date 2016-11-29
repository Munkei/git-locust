#!/usr/bin/perl

# Test that our declared minimum Perl version matches our syntax

use strict;
use warnings;

BEGIN {
  $|  = 1;
  $^W = 1;
}

my @MODULES = qw( Perl::MinimumVersion Test::MinimumVersion );

use Test::More;

# Load the testing modules
foreach my $MODULE ( @MODULES ) {
  eval "use $MODULE";
  if ( $@ ) {
    $ENV{RELEASE_TESTING}
      ? die( "Failed to load required release-testing module $MODULE" )
      : plan( skip_all => "$MODULE not available for testing" );
  }
}

all_minimum_version_from_metayml_ok();

1;
