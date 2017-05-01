#! /usr/bin/env perl
use strict;
use warnings;

my %name_to_age = (
	'結城 浩'	=>	36,
	'佐藤 花子'	=>	22,
	'戸村 薫'	=>	21,
);

#change key and value
my %age_to_name;
foreach my $name (keys %name_to_age) {
	$age_to_name{$name_to_age{$name}} = $name;
}

#print check
foreach my $age (keys %age_to_name){
	print "$age →	$age_to_name{$age}\n";
}