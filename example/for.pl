#!perl -w
use strict;
use FindBin qw($Bin);
use lib "$Bin/../lib";

use Acme::Perl::VM;

sub f{
	my($x) = @_;
	print $x, "\r";
	return $x;
}

run_block {
	local $| = 1;

	my $sum = 0;
	for(my $i = 1; $i <= 100; $i++){
		for(my $j = 1; $j <= 10; $j++){
			$sum += f($i * $j);
		}
	}

	print "\n", $sum, "\n";
};

print B::timing_info(), "\n";
