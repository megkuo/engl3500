=== F ===

At yet another intersection, you spot a baseball field on the southwest corner and a soccer field to the north. To the southeast, you see a small but bustling ice cream parlor next to a car wash. {|You think that this intersection looks a little familiar.|You're certain that you've been to this intersection before...}

You decide to drive...
+ [west] -> west
+ [east] -> east
+ [south] -> south
// + repeat choice -> repeat
// * -> fallback // this is a fall back choice

= west
You go west.
~next_intersection = -> E
-> gas_meter

= east
You go east.
~next_intersection = -> I
-> gas_meter

= south
You go south.
~next_intersection = -> G
-> gas_meter