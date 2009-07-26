#!/usr/bin/perl -T

# t/03exceptions.t
#  Tests fast errors produced with obvious mistakes
#
# $Id: 03exceptions.t 8228 2009-07-26 00:55:52Z FREQUENCY@cpan.org $

use strict;
use warnings;

use Test::More tests => 6;
use Test::NoWarnings;

use Alien::Libjio;

# Incorrectly called methods
{
  my $obj = Alien::Libjio->new();
  eval { $obj->new(); };
  ok($@, '->new called as an object method');

  eval { Alien::Libjio->installed; };
  ok($@, '->installed called as a class method');

  eval { Alien::Libjio->version; };
  ok($@, '->version called as a class method');

  eval { Alien::Libjio->ldflags; };
  ok($@, '->ldflags called as a class method');

  eval { Alien::Libjio->cflags; };
  ok($@, '->cflags called as a class method');
}
