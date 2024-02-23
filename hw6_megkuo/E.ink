=== E ===

At this intersection, there's a big box store and ginormous parking lot to the north, but the road doesn't connect to it. To the southwest is a playground, and to the southeast is a large track with a field in the center. {|You think that this intersection looks a little familiar.|You're certain that you've been to this intersection before...}

You decide to drive...
+ [west] -> west
+ [east] -> east
+ [south] -> south
// + repeat choice -> repeat
// * -> fallback // this is a fall back choice

= west
You go west.
~next_intersection = -> D
-> gas_meter

= east
You go east.
~next_intersection = -> F
-> gas_meter

= south
You go south.
~next_intersection = -> B
-> gas_meter