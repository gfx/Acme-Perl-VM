#!perl -w

use strict;
use B;
use Config;
printf "Perl %vd $Config{archname}\n\n", $^V;

foreach my $name(grep{ /^[A-Z]/ } @B::EXPORT_OK ){
	printf "%-30s=%12s\n", $name, B->$name();
}
