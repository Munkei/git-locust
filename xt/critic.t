#!/usr/bin/perl

# Test that the module passes perlcritic

use strict;
use warnings;

BEGIN {
  $|  = 1;
  $^W = 1;
}

my @MODULES = qw( Perl::Critic Test::Perl::Critic );

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

all_critic_ok();

1;
