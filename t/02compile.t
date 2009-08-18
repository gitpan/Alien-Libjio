#!/usr/bin/perl -T

# t/02compile.t
#  Check that the module can be compiled and loaded properly.
#
# $Id: 02compile.t 8615 2009-08-18 03:24:15Z FREQUENCY@cpan.org $

use strict;
use warnings;

use Test::More tests => 2;
use Test::NoWarnings; # 1 test

# Check that we can load the module
BEGIN {
  use_ok('Alien::Libjio');
}