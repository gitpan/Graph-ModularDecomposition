# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

#########################

# test showing that Graph::add_edge is not idempotent
# docs really should mention this, or otherwise multidigraphs should be
# allowed in rest of code

use Test;
BEGIN { plan tests => 1 };
use Graph::ModularDecomposition;

#########################

sub test7 {
    print "test7\n";
    my $g = new Graph::ModularDecomposition;
    my @p = ( 'a','b','b','c','a','b' );
    while ( my ($t, $u) = splice @p, 0, 2 ) {
	$g = $g->add_edge($t,$u);
    }
    ok $g, 'a-b,a-b,b-c';
}


test7;
