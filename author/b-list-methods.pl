#!perl -w

use strict;
use B;
use Config;
use Class::Inspector;

printf "Perl %vd $Config{archname}\n\n", $^V;

my $class = shift(@ARGV) || 'B::SV';
foreach my $name( sort @{Class::Inspector->methods($class, 'full')} ){
    printf "%s\n", $name;
}
