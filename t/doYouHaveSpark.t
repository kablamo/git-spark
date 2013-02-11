use Test::Most;

my $foundSpark = 0;

foreach my $path (split(':', $ENV{PATH})) {
    if (-e "$path/spark") {
        $foundSpark = 1;
        pass "Found spark in \$PATH: $path";
        last;
    }
}

fail "
    Did not find spark in \$PATH.  

    The spark github project is located here: 
    https://github.com/holman/spark

    To download: 
    wget https://raw.github.com/holman/spark/master/spark
" 
unless $foundSpark;

done_testing;
