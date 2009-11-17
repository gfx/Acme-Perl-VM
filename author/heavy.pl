#!perl -w

use strict;
use 5.010;
use Acme::Perl::VM;

my $file = `perldoc -l perlrun`;
chomp $file;
open my $in, '<', $file;

run_block{
	local $|= 1;
	my $i = 0;
	while(<$in>){
		print $i++, "\r";
	}
	say $i;
};
