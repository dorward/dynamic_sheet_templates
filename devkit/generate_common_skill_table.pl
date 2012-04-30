#!/usr/bin/perl

use strict;
use warnings;
use v5.12;

my $data = q{
<td class="common_skill_name" id="common_skill_name_%s">%s</td>
<td class="common_skill_attribute" headers="common_skill_name_%s">%s</td>
<td class="common_skill_score" headers="common_skill_name_%s">
	<span class="dsf common_skill_score dsf_common_skill_%s"></span>
</td>
};

my @listing = (
{name => "Act", attribute => "Presence"}, 
{name => "Athletics", attribute => "Dexterity"}, 
{name => "Blunt Weapons", attribute => "Dexterity"}, 
{name => "Bull", attribute => "Presence"}, 
{name => "Charm", attribute => "Presence"}, 
{name => "Conceal", attribute => "Wits"}, 
{name => "Concentration", attribute => "Resolve"}, 
{name => "Dance*", attribute => "Dexterity"}, 
{name => "Dodge", attribute => "Dexterity"}, 
{name => "Drive Carriage", attribute => "Wits"}, 
{name => "Empathy", attribute => "Presence"}, 
{name => "Etiquette*", attribute => "Wits"}, 
{name => "Firearms", attribute => "Dexterity"}, 
{name => "Fisticuffs", attribute => "Dexterity"}, 
{name => "General Knowledge", attribute => "Wits"}, 
{name => "Hide & Sneak", attribute => "Dexterity"}, 
{name => "Horse Riding", attribute => "Dexterity"}, 
{name => "Improvised Weapon", attribute => "Dexterity"}, 
{name => "Intimidate", attribute => "Presence"}, 
{name => "Might", attribute => "Strength"}, 
{name => "Perception", attribute => "Wits"}, 
{name => "Streetwise*", attribute => "Presence"}, 
{name => "Swordplay", attribute => "Dexterity"}, 
{name => "Throwing", attribute => "Dexterity"},
	);

my $skill_html = "";

my $count = 0.5 * scalar @listing;

for (0 ... $count - 1) {


	$skill_html .=  "<tr>" .
					get_html ( $listing[$_] ) .
	 				get_html ( $listing[$_ + $count] ) .
	 				"</tr>";
}

sub get_html {
	my $skill = shift;
	my $name = $skill->{name};
	my ($id) = split ' ', lc $name;
	my $attribute = $skill->{attribute};
	sprintf($data,$id, $name, $id, $attribute, $id, $id);
}

say $skill_html;
