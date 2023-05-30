<?php

/**
* Language: "PHP: Hypertext Preprocessor"
* Copyright: Journey, 1981
* Author: @allella
*/

// while there is not disbelief
while (! $disbelief)
{
	// if holding on to a feelin' AND streetlights & people exist
	if ( $holdOn == "feelin'" && ($streetlights && $people) )
	{
	  $time = 'midnight';
	  $destination = 'anywhere';

	  $origin = 'small-town';
	  $passenger = 'girl';
	  $placeOfBirth = 'lonely world';
	  $smallTownGirl = new TrainPassenger($origin, $destination, $passenger, $placeOfBirth, $time);

	  $origin = 'city';
	  $passenger = 'boy';
	  $placeOfBirth = 'South Detroit';
	  $cityBoy = new TrainPassenger($origin, $destination, $passenger, $placeOfBirth, $time);
	} // end if, "Hold on to that feelin'...Streetlights, people"

} // end while, "Don't Stop Believin'"
