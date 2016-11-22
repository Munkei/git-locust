#!/usr/bin/perl

# Test that the syntax of our POD documentation is valid

use strict;
use warnings;

BEGIN {
  $|  = 1;
  $^W = 1;
}

my @MODULES = qw( Pod::Simple Test::Pod );

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

all_pod_files_ok();

1;
