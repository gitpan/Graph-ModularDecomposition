use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Graph::ModularDecomposition',
    'VERSION_FROM'	=> 'ModularDecomposition.pm', # finds $VERSION
    'PREREQ_PM'		=> { Graph => 0.20104 }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'ModularDecomposition.pm', # retrieve abstract from module
       AUTHOR     => 'Andras Salamon <andras@dns.net>') : ()),
);
