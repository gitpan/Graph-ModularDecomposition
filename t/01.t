# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

#########################

# check debug
# check inheritance or work-around

use Test;
BEGIN { plan tests => 5 };

use Graph::ModularDecomposition;

Graph::ModularDecomposition->debug(1);
ok(1);

my $g = new Graph::ModularDecomposition;
ok ref($g), 'Graph::ModularDecomposition';

$g->debug(0);
ok(1);

my $h = $g->new;
ok ref($h), 'Graph::ModularDecomposition';

$h = $g->copy;
ok ref($h), 'Graph::ModularDecomposition';

