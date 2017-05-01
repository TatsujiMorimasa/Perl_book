#! /usr/bin/env perl
use strict;
use warnings;

#出力の順番はランダムだが、対応した値は紐付いた順に出ている
my %hash = (
	'結城 浩'		=>	36,
	'佐藤 花子'		=>	22,
	'戸村 薫'		=>	21,
	'高橋 マモル'	=>	22,
);
my @keys = keys(%hash);
my @values = values(%hash);
print join(',', @keys),"\n";
print join(',', @values), "\n";