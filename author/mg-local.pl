#!perl -w

use strict;
use Devel::Peek;

$| = 0;

my $mgref = \$|;
my $r;
{
    local $| = 1;
    $r = \$|;
    Dump($mgref);
    Dump($r);


    print "$$mgref\n";
    print "$$r\n";
}

Dump($mgref);
Dump($r);

print "$$mgref\n";
print "$$r\n";
print "[$|]\n";
