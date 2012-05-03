#!/usr/bin/perl

use strict;
use warnings;
use v5.12;
use JSON;

my $template = q{
<div class="die">
	<span class="dsf checkbox health_die_%d"></span>
	<span class="dsf checkbox health_die_%d"></span>
</div>
            };

my $count = 1;

printf($template, $count++, $count++) for 1..18;
