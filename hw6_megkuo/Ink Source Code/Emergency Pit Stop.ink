INCLUDE A.ink
INCLUDE B.ink
INCLUDE C.ink
INCLUDE D.ink
INCLUDE E.ink
INCLUDE F.ink
INCLUDE G.ink
INCLUDE H.ink
INCLUDE I.ink
INCLUDE template.ink

-> intro

VAR next_intersection = -> A
VAR saw_the_divine = false
== intro ==

You're driving to visit your best friend from high school who moved 4 hours away from you. 
Around 2 hours into the drive, you're blasting early 2000's music and belting along. As you drive, grass fields surround you on both sides.
You decide to check the time and see it's about 3 pm -- you should be able to make it in time for dinner. 
However, you also notice that the low fuel light is on -- has been on, as your gas tank seems to be near the empty line.

You need to find the nearest gas station ASAP. 
-> checking
= checking
You check
* your phone[] and tap the screen, but it doesn't turn on. Confused, your brow furrows as you hold down the power button. Crap.
    ** [check for a charger cord]
        You check around for a charger cord, then remember you lent it to your brother when his break. Crap crap. 
        -> checking
* the glove compartment[] in search of a map, but remember that you live in the 2020's and people don't carry around maps anymore. Oh, how you long for the days of MapQuest right now! 
-> checking
* -> 
    the highway signs, gleeful when you see one that says there's an exit coming up with a gas station a couple miles into town.
    
    You take the nearest exit and enter town. 
    -> A

=== gas_meter ===
// Checking how much gas you have left:
// once only's
{ not C.west:
 {!The dial is juuuust above the empty line.|The dial has officially hit empty -- but your car is still moving! |The dial has started to go past the empty line -- you didn't know that was possible...|Your car is starting to make some weird noises -- like sputtering. You have a feeling it'll run out really soon.|The car rolls to a stop... You've run out of fuel. -> gas_check}
 }
 { C.west:
    {!Your gas tank has reverted to how much was left earlier, with the dial is juuuust above the empty line.|The dial has officially hit empty -- but your car is still moving! |The dial has started to go past the empty line -- you didn't know that was possible...|Your car is starting to make some weird noises -- like sputtering. You have a feeling it'll run out really soon.|The car rolls to a stop... You've run out of fuel. -> gas_check}
 }
 -> next_intersection
 
 == gas_check
 // conditional choices
 * {next_intersection == -> I} Wait, is that the gas station up ahead?
    You end up walking over to the gas station in disbelief that you had almost made it. 
    Eventually, you're able to refuel your car and continue on your merry way. You lucked out!
    -> END
 * {next_intersection != -> I} Darn it.
    Fortunately, you were able to pull over to the side of the road before your car stopped. Glancing around, you see some people walking by. 
    With no other choice, you decide to summon the courage to ask where the gas station is: -> asking
    
== asking
* [ask the dad with his daughter]
    You decide to ask the dad on a stroll with his daughter. 
    When you ask, he scratches his chin and points vaguely to the northwest, rattling off a list of instructions longer than you can remember. The little girl waves goodbye as they continue to walk. -> asking
* [ask the older lady speedwalking by]
    You decide to ask the older lady speedwalking nearby. 
    When you ask, she immediately beams and tells you that it's quite a ways away but it's a good gas station to go to because her grandchild, Clive, works there; even though they've raised the prices on the coffee they sell there, which is such a shame because when she worked there as a teenager, coffee was $0.25 for a cup...
    You feel a bit overwhelmed, but thank her for her advice as she leaves. -> asking
* [ask the group of teens] 
    You decide to ask the group of teens biking.
    They ask why you don't just use Boogle Maps or something, and you sheepishly admit that your phone had ran out of battery. 
    One of them takes out their phone and shows you the way to get there -- you're a bit directionally-challenged, but it's helpful nonetheless. Another pipes in and says the slushies at Zheets is better than the ones at Awaw.
    You thank them as they leave, giving them $10 as a treat. They whoop and cheer as they bike away. -> asking
* -> // fallback choice
    Wandering around the town, you pick a direction to head towards and hope for the best. 
    Life seems to take mercy on you, as you eventually find yourself at the gas station!
    Then, you realize you forgot to keep track of where you left your car... 
    Sighing, you decide to take a break before worrying about that.
    -> END
    
    

// 2 Fallback Choices
// 1 of each:

// INCLUDE to_include.ink

// includes can help with organization
// Once upon a time...

//  * There were two choices. -> scene
//  * There were four lines of content. -> a_knot.a_stitch // how to access inner stitich
 


// == scene ==

// * first -> first // if use +, that makes it a sticky choice, one you can always choose (ex. for linearity idea)
// * second -> second
// * third -> third
// + repeat choice -> repeat
// * -> fallback // this is a fall back choice

// = first 
// first
// * go back -> scene

// = second
// second
// * go back -> scene

// =third
// third
// * go back -> scene
// * -> END // need to put here since above choice will disappear after being chosen


// = fallback
// Fallback choice
// -> END

// = repeat

// {& ->first | "three" | "two" | "one" | "WOAH"} // sequence that it will rotate through; put an ampersand infront if want it indefinite, put a ! if you want it to only go through once -> will show nothing beyond that; use ~ to show a random one

// ->scene

    -> END