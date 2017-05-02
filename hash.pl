#! /usr/bin/env perl
use strict;
use warnings;

#ハッシュ：複数の情報を対応させるやつ。SQL的なもの？

#ハッシュ変数 キー => 値
my %hash = (
	'結城 浩'		=> 36,
	'佐藤 花子'		=> 22,
	'とむら'			=> 21,
	'高橋 マモル'	=> 22,
);
#キーと値を矢印でつないで表示
#実行する度に準番が変わるので、sortで順番を固定
print "■ 追加前\n";
foreach (sort keys %hash) {
	print "$_ → $hash{$_}\n";
}

#田中くんを追加
$hash{'田中'} = 42;
print "\n■ 田中がログインしました\n";
print "■ 追加後\n";
foreach (sort keys %hash) {
	print "$_ → $hash{$_}\n";
}

#年齢順ソート
print "■ 年齢順\n";
foreach (sort { $hash{$a} <=> $hash{$b} } keys %hash) {
	print "$_ → $hash{$_}\n";
}