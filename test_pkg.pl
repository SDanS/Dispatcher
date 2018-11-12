#!/usr/bin/perl
use strict;
use warnings;
use FindBin;
use lib "/Users/dan/perl5/lib/perl5";
use lib "$FindBin::Bin ./";
use Intercept;
use Data::Dumper;
my $intercept = Intercept->new->registerinc;
{
    require Acme;
}
$intercept->disengage();
print Dumper $intercept;
