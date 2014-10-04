#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use Data::Printer;
use WWW::Search::GalerieIlonkaCZ;

# Arguments.
if (@ARGV < 1) {
        print STDERR "Usage: $0 match\n";
        exit 1;
}
my $match = $ARGV[0];

# Object.
my $obj = WWW::Search->new('GalerieIlonkaCZ.pm');
$obj->maximum_to_retrieve(1);

# Search.
$obj->native_query($match);
while (my $result_hr = $obj->next_result) {
       p $result_hr;
}

# Output:
# Usage: /tmp/1Ytv23doz5 match

# Output with 'Čapek' argument: