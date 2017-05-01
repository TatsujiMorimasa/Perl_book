#! /usr/bin/env perl
use strict;
use warnings;

#キーと値を一組ずつ取り出す
my %hash = (
	'結城 浩'		=>	36,
	'佐藤 花子'		=>	22,
	'戸村 薫'		=>	21,
	'高橋 マモル'	=>	22,
);

while (my($key, $value) = each(%hash)) {
	print "$key → $value\n";
}