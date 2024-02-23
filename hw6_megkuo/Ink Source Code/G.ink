=== G ===

This intersection has a desolate Malmart on the southwest corner. There's a small inn on the southeast corner, which has a fire hall across the street from it to the northeast. Finally, to the northwest is a thin forest. {|You think that this intersection looks a little familiar.|You're certain that you've been to this intersection before...}

You decide to drive...
+ [north] -> north // if use +, that makes it a sticky choice, one you can always choose (ex. for linearity idea)
+ [west] -> west
+ [east] -> east
+ [south] -> south
// + repeat choice -> repeat
// * -> fallback // this is a fall back choice

= north 
You go north.
~next_intersection = -> F
-> gas_meter

= west
You go west.
~next_intersection = -> B
-> gas_meter

= east
You go east.
~next_intersection = -> H
-> gas_meter

= south
You go south.

You stare in horror as you see the green highway signs above telling you that you're re-entering the highway you originally exited off of. 
You contemplate reversing off of the entrance ramp.
* [reverse]
    You suddenly slam on your breaks and shift into reverse. Without even glancing at the cars behind you, you start to reverse back into the intersection. Cars honk as they speed past you on both sides, but you are determined. 
    You backup all the way until you're back behind the original light you entered the intersection from. A bad driver never misses their turn.
    While you didn't enter the highway, you do feel a karmic weight on your soul.
    As you should.
    ** [karma - 1] 
    ~next_intersection = -> G
    -> gas_meter
* [continue and face the consequences of your oversight]
    You commit to your mistake and continue driving straight. Before you have the chance to exit off of the highway, your car runs out of gas. 
    As you exit your car, pulled over to the side of the road with its hazards on, you start to resolve yourself to walking back into town to find a gas station.
    However, as if some higher being smiles upon your decision to not be a self-interested jerk and reverse on the highway ramp, a truck pulls over near you. They offer to drive you to the nearest gas station! 
    Entering back into town, they go east, then north -- the gas station appears on your left. Who knew it was that straight-forward?
    After getting some gas and some Taco Bell-flavored sunflower seeds, you return to your car and carry on driving down the highway into the sunset.
    -> END