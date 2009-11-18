#!perl -w

use strict;
use B;
use Config;
printf "Perl %vd $Config{archname}\n\n", $^V;

foreach my $name(sort grep{ !/^[A-Z]/ } @B::EXPORT_OK ){
    printf "%-30s\n", $name;
}
