=== C ===

This next intersection has a Peppy Pepper place on the southeast corner {!-- it's been ages since you last had pizza from that chain}. A quaint, forested park lies to the northeast. The west has no road, and instead has a vast, lush field of grass. {|You think that this intersection looks a little familiar.|You're certain that you've been to this intersection before...}

This intersection is a T-intersection, so there are only 3 directions you can choose from.

You decide to drive...
+ [north] -> north // if use +, that makes it a sticky choice, one you can always choose (ex. for linearity idea)
+ [east] -> east
+ [south] -> south
* [go west anyways] -> west
// + repeat choice -> repeat
// * -> fallback // this is a fall back choice

= north 
You go north.
~next_intersection = -> D
-> gas_meter

= west
You go west anyways, even though there is no road. Cars honk as you barrel past the wooden fence, your car rocking as you start driving into the empty grass field. 
There is a scarecrow up ahead.
* [hit the scarecrow]
    You gun it towards the scarecrow, aiming to mow it down with your car. 
    The scarecrow gets sent flying upwards, and you laugh manicaically as you drive into the sunset. 
    You are chaos incarnate.
    -> END
* [avoid the scarecrow]
    You swerve to the right to avoid the scarecrow, but turn too hard while going too fast. Your car tips over and starts to roll, leaving a trail of compressed grass in its wake.
    You'd probably die from this, but some higher being likes your style and decides to grant you another chance at life. You find yourself back at where you started, car intact.
~saw_the_divine = true
~next_intersection = -> A
-> gas_meter

= east
You go east.
~next_intersection = -> B
-> gas_meter

= south
~next_intersection = -> A
-> gas_meter