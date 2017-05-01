#! /usr/bin/env perl
use strict;
use warnings;

#データを紐付けた管理がしたいときはhashが便利
my %user = (
	'hyuki@kyuki.com'		=>	'結城 浩,36',
	'hanako@kyuki.com'		=>	'佐藤 花子,22',
	'hanachan@kyuki.com'	=>	'佐藤 花子,20',
	'tomura@kyuki.com'		=>	'戸村 薫,21',
	'mamoru@kyuki.com'		=>	'結城 浩,22',
);
foreach my $key (sort keys %user) {
	my ($name, $age) = split(/,/, $user{$key});
	print $key, 'の名前は ',$name,'で、年齢は ',$age, ' 歳です。',"\n";
}