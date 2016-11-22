#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

eval "use Test::YAML::Valid";
plan skip_all => "Test::YAML::Valid required for testing Travis CI config"
  if $@;

yaml_file_ok( '.travis.yml', 'Travis CI config is valid YAML' );

done_testing;
