=== B ===
You approach another intersection with a hardware store on the southeast corner, and what looks like a park to the northwest. {|You think that this intersection looks a little familiar.|You're certain that you've been to this intersection before...}

You decide to drive...
+ [north] -> north // if use +, that makes it a sticky choice, one you can always choose (ex. for linearity idea)
+ [west] -> west
+ [east] -> east
+ [south] -> south
// + repeat choice -> repeat
// * -> fallback // this is a fall back choice

= north 
You go north.
~next_intersection = -> E
-> gas_meter

= west
You go west.
~next_intersection = -> C
-> gas_meter

= east
You go east.
~next_intersection = -> G
-> gas_meter

= south
~next_intersection = -> A
-> gas_meter