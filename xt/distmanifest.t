#!/usr/bin/perl

# Test that the module MANIFEST is up-to-date

use strict;
use warnings;

BEGIN {
  $|  = 1;
  $^W = 1;
}

my @MODULES = qw( Test::DistManifest );

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

manifest_ok();

1;
