#!/usr/bin/perl

use strict;
use warnings;
use v5.12;
use JSON;

my $data = q{
<td class="skill_name">
  <span class="dsf special_skill_name dsf_special_skill_name_%d"></span>
</td>
<td class="skill_attribute">
  <span class="dsf skill_score dsf_special_skill_attribute_%d"></span>
</td>
<td class="skill_score">
  <span class="dsf skill_score dsf_special_skill_score_%d"></span>
</td>
};

my $skill_html = "";

my $count = 0;

for (0 ... 13) {


	$skill_html .=  "<tr>" .
					sprintf($data, ++$count, $count, $count) .
					sprintf($data, $count + 14, $count + 14, $count + 14) .
					"</tr>";
}

say $skill_html;
