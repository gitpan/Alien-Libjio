#!/usr/bin/perl

# t/00build.t
#  Test that the build completed successfully
#
# $Id: 00build.t 8228 2009-07-26 00:55:52Z FREQUENCY@cpan.org $

use strict;
use warnings;

use Test::More tests => 4;
use Test::NoWarnings;

use Module::Build;
my $builder = Module::Build->current;

use File::Spec;

SKIP: {
  skip('tests if libjio is built', 3) unless $builder->notes('build_libjio');

  is($builder->notes('build_result'), 0, 'Return code from make is zero ' .
    '(ie, build completed successfully)');
  ok(-e File::Spec->catfile('libjio', 'libjio', 'libjio.so'), 'Compiled ' .
    'libjio.so file exists on disk');
  ok(-e File::Spec->catfile('libjio', 'libjio', 'libjio.a'), 'Compiled ' .
    'libjio.a file exists on disk');
}
