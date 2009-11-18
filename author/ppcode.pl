#!perl -w

use strict;
use Acme::Perl::VM qw(@PL_ppaddr);

my $implemented = 0;
for(my $i = 0; $i < @PL_ppaddr; $i++){
    my $ok = B::svref_2object($PL_ppaddr[$i])->GV->NAME ne '__ANON__';
    print $ok ? '* ' : '  ', B::ppname($i), "\n";
    $implemented++ if $ok;
}

printf "PPCODE %d/%d (%d%%)\n",
    $implemented,  scalar @PL_ppaddr,
    ($implemented / scalar @PL_ppaddr)*100;
