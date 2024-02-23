=== D ===

As you approach another intersection, you spot a school on the southeast corner. To the north and west, you see some townhouses and cul-de-sacs, but the road doesn't connect over to them. {|You think that this intersection looks a little familiar.|You're certain that you've been to this intersection before...}

You decide to drive...
+ [east] -> east
+ [south] -> south
// + repeat choice -> repeat
// * -> fallback // this is a fall back choice

= east
You go east.
~next_intersection = -> E
-> gas_meter

= south
You go south.
~next_intersection = -> C
-> gas_meter