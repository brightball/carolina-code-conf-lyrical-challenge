<?php

/**
* Language: "PHP: Hypertext Preprocessor"
* Copyright: Journey, 1981
* Author: @allella
*/

// while disbelief is FALSE
while (! $disbelief)
{
	// if streetlights, people, and holding on to a feelin' all exist
	if ( ($streetlights && $people) && $holdOn == "feelin'" )
	{
	  $time = 'midnight';
	  $destination = 'anywhere';
	  $origin = 'small-town';
	  $passenger = 'girl';
	  $placeOfBirth = 'lonely world';

	  $smallTownGirl = new Train ($origin, $destination, $passenger, $placeOfBirth, $time);
	  $origin = 'city';
	  $passenger = 'boy';
	  $placeOfBirth = 'South Detroit';

	  $cityBoy = new Train ($origin, $destination, $passenger, $placeOfBirth, $time);
	} // end if, not stop believing

} // end while, still believing
