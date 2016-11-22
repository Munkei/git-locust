#!/usr/bin/env perl

use strict;
use v5.20;
use warnings FATAL => 'all';

use Test::More;

eval "use Test::CheckManifest";
plan skip_all => "Test::CheckManifest required" if $@;

ok_manifest();
