# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

#########################

# check tree_to_string

use Test;
BEGIN { plan tests => 5 };
use Graph::ModularDecomposition qw( tree_to_string );

#########################

ok tree_to_string( {} ), '';

my $g = new Graph::ModularDecomposition;
ok tree_to_string( $g->modular_decomposition_EGMS ), '';
eval {
    open(STDERR, ">/dev/null") if -w '/dev/null';
    $g->debug(3);
    ok tree_to_string( $g->modular_decomposition_EGMS ), '';
    $g->debug(0);
};

$g->add_edge( 'a', 'c' );
$g->add_edge( 'a', 'd' );
ok tree_to_string( $g->modular_decomposition_EGMS ),
    'linear[acd]([a];complete_0[cd]([c];[d]))';

Graph::ModularDecomposition->debug(1);
$g->add_edge( 'b', 'd' );
ok tree_to_string( $g->modular_decomposition_EGMS ),
    'primitive[abcd]([a];[b];[c];[d])';

