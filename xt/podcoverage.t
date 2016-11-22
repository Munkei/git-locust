#!/usr/bin/perl

# Ensure pod coverage in your distribution

use strict;
use warnings;

BEGIN {
  $|  = 1;
  $^W = 1;
}

my @MODULES = qw( Test::Pod::Coverage );

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

all_pod_coverage_ok();

1;
