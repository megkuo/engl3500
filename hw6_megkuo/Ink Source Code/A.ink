=== A ===

You approach an intersection with a McDonaldson's on the northeast corner. The entrance and exit to the highway is to the south. {|You think that this intersection looks a little familiar.|You're certain that you've been to this intersection before...} // sequence

You decide to drive...
// sticky choices galore!
+ [north] -> north // if use +, that makes it a sticky choice, one you can always choose (ex. for linearity idea)
+ [west] -> west
+ [east] -> east
+ [south] -> south
// + repeat choice -> repeat
// * -> fallback // this is a fall back choice

= north 
You go north.
~next_intersection = -> B
-> gas_meter

= west
You go west.
~next_intersection = -> C
-> gas_meter

= east
~next_intersection = -> H
-> gas_meter

= south
    You end up back on the highway in the direction you just came from. Your car quickly runs out of gas before you can refill it, and you end up on the side of the road hoping someone will take pity on you.
    You wait...-> waiting

= waiting // cycle
    {&twiddling your thumbs...|picking at your nails...|rocking back and forth on your feet...|watching all the cars zoom past...|shivering because of the approaching night...}
    + [wait] -> waiting
    -> END