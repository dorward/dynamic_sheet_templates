#!/usr/bin/perl

use strict;
use warnings;
use v5.12;
use JSON;

my $bio = q{
      <p>Harrison Scully, better known as Harry (or ’arry), grew up on the streets of London, just one more grubby face in the crowds of urchins. His advantage was that of quickness, light of fingers and light of foot, ’arry was rarely in any noticeable trouble.</p>
<p>In those days, young Scully ran with the Beak Street Boys. His daring earned him great acclaim among his peers, but they, and he, all deferred to to <a href="/campaigns/jago-and-litefoot/characters/koad" class="wiki-content-link">Jeremiah Kode</a>, the gang’s leader.<br>
Kode was possessed of a more than usually generous of cunning, which he combined with a natural charisma. Among the gang of children, Jeremiah ran the show and Harry was his lieutenant.</p>
<p>(To do: what happened to send him off to the army?)</p>
<p>After joining the army, Harry found himself shipped out to India along with a dozen or so other men and a large quantity of cargo. The journey wasn’t the smoothest and the motion of the ship got the better of many of the other men, including the private responsible for looking after the only officer on board — <a href="/campaigns/jago-and-litefoot/characters/makepeace" class="wiki-content-link">Lt. Col. Makepeace</a>. Scully found himself coopted to be a replacement who wouldn’t have to keep running to the side of the ship to heave overboard.</p>
<p>Never one to miss an opportunity when one presented itself, Harry made an effort to keep the officer happy, and while he made mistakes, he never made the same one twice and avoided the cardinal sin of his predecessor — vomiting in the Colonel’s boots.</p>
<p>Makepeace had one of the stiffest upper lips in the Empire but didn’t lack compassion for the somewhat hapless recruit thrust into the role of Soldier-Servant. Scully scored points for enthusiasm and good humour even if he lacked a certain refinement. When the ship finally docked, he kept the man on. Harry had landed on his feet.</p>
<p>Makepeace fancied himself as something of a hunter and went out on expeditions relatively frequently. His and Harry’s eye were opened when one beast they were hunting turned out to be a weretiger. The encounter resulted in a nasty scar for Harry that ran down the edge of his right eye and along his cheek. The Colonel fared less well, coming away from the battle with a severely wounded leg. He was invalided back to England, and took Scully with him.</p>
<p>The leg wound seemed to be healing, but flared up with some kind of infection on the journey back home. It took the intervention of a member of the Guild, one <a href="/campaigns/jago-and-litefoot/characters/castallan" class="wiki-content-link">Elgin Castallan</a>, who had some experience dealing with the unnatural creatures of the subcontinent to stop the infection (which he described as a virulent curse) from spreading further. His cure resulted in the amputation of Makepeace’s right leg, some inches above the knee.</p>
<p>… to be continued…</p>
};

say to_json( { bio => $bio } );