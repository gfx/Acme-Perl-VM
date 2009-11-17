use strict;
use warnings;
use inc::Module::Install;

name 'Acme-Perl-VM';
all_from 'lib/Acme/Perl/VM.pm';

requires 'Exporter' => 5.57;
requires 'Mouse'    => 0.21;
requires 'B';

test_requires 'Test::More' => 0.62;

tests 't/*.t';
author_tests 'xt';

WriteMakefile(
	clean => {FILES => q(
		Acme-Perl-VM-* *.stackdump
		cover_db
		nytprof
		*.out
	)},
);
