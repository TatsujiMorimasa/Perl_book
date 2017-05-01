#! /usr/bin/env perl
use strict;
use warnings;

#print env(CAUTION:a lot of env will print and random.)
foreach (keys %ENV) {
	print "$_ →	$ENV{$_}\n";
}