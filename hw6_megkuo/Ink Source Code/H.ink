=== H ===

You arrive at an intersection with a row of apartment buildings on the southwest corner, and a visitor center to the northwest. To the east is a private drive that leads to a farm. {|You think that this intersection looks a little familiar.|You're certain that you've been to this intersection before...}

You decide to drive...
+ [north] -> north // if use +, that makes it a sticky choice, one you can always choose (ex. for linearity idea)
+ [west] -> west
+ [south] -> south
// + repeat choice -> repeat
// * -> fallback // this is a fall back choice

= north 
You go north.
~next_intersection = -> I
-> gas_meter

= west
You go west.
~next_intersection = -> G
-> gas_meter

= south
You go south.
~next_intersection = -> A
-> gas_meter