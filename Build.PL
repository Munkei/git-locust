#!/usr/bin/env perl

use v5.20;
use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new(
  add_to_cleanup     => [],
  build_requires     => {},
  configure_requires => {
    'Module::Build' => 0,
  },
  create_makefile_pl   => 'traditional',
  dist_abstract        => 'Graph LOC over time',
  dist_author          => q{Theo ‘Biffen’ Willows <theo@willows.se>},
  dist_version_from    => 'bin/git-locust',
  license              => 'perl',
  module_name          => 'git-locust',
  recursive_test_files => 1,
  release_status       => 'stable',
  requires             => {
    'Carp'            => 0,
    'Getopt::Long'    => 0,
    'Git'             => 0,
    'IO::All'         => 0,
    'JSON::MaybeXS'   => 0,
    'Pod::Usage'      => 0,
    'Readonly'        => 0,
    'Term::ANSIColor' => 0,
    'YAML::Any'       => 0,
  },
  test_files => ( $ENV{CI} ? 'xt/' : undef ),
);

$builder->create_build_script();
