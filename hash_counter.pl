#! /usr/bin/env perl
use strict;
use warnings;

#同じものの登場回数を数える
my %counter;
my @name = (
	'Yuki', 'Tomura', 'Sato', 'Sato','yuki', 'Mamoru', 'Tomura', 'Sato',
);
foreach my $name (@name){
	$counter{$name}++;
}
foreach my $name (sort keys %counter){
	print "$name $counter{$name}\n";
}