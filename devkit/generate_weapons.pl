#!/usr/bin/perl

use strict;
use warnings;
use v5.12;
use JSON;

my $die = q{
                <tr>
                  <td><span class="dsf weapon name dsf_weapon_name_1"></span></td>
                  <td><span class="dsf weapon skill dsf_weapon_skill_1"></span></td>
                  <td><span class="dsf weapon damage dsf_weapon_damage_1"></span></td>
                  <td><span class="dsf weapon rof dsf_weapon_rof_1"></span></td>
                  <td><span class="dsf weapon shots dsf_weapon_shots_1"></span></td>
                  <td><span class="dsf weapon reload dsf_weapon_reload_1"></span></td>
                  <td><span class="dsf weapon range dsf_weapon_range_1"></span></td>
                  <td><span class="dsf weapon notes dsf_weapon_notes_1"></span></td>
                </tr>       
            };


for  (2..11) {
	my $current = $die;
	$current =~ s/1/$_/g;
	print $current;
};
