#! /usr/bin/env perl
use strict;
use warnings;

my %keyword = (
	'----'		=>	'<hr>',
	'-mail'		=>	'<a href="mailto:seno@hoge.com">hoge.com</a>',
	'-home'		=>	'<a href="http://www.seno.com/">http://www.seno.com/</a>',
	'-notice'	=>	'リンクはご自由に。フィードバックはお気軽に。',
);

if (@ARGV == 0) {
	#引数が何もなかったので、使い方を表示して終了
	print "Usage: perl makehtml.pl input.txt > output.html";
	exit(-1);
}
print "<html>\n";
foreach my $file (@ARGV){
	open(FILE, $file) or die "$!";
	while (my $line = <FILE>){
		chomp($line);
		if ($line =~ /^\*\*(.*)/){
			print "<h2>$1</h2>\n";
		}elsif ($line =~/^\*(.*)/){
			print "<center><h1>$1</h1></center>\n";
		}elsif (exists($keyword{$line})){
			print "$keyword{$line}\n";
		}else{
			print "$line\n";
		}
	}
	close(FILE);
}
print "</html>\n";