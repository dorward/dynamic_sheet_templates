#!/usr/bin/perl

use strict;
use warnings;
use v5.12;
use JSON;

my $die = q{
<div class="die d6">
%s</div>
            };

my $pip = q{    <span class="dsf checkbox fate_die_position_%d fate_die_%d"></span>
};

for my $die_number (0..4) {
	my $pips = "";
	$pips .= sprintf($pip, $_, ($die_number * 6) + $_) for 1..6;
	printf($die, $pips);
};
