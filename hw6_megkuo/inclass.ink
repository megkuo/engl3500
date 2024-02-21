INCLUDE to_include.ink
// includes can help with organization
Once upon a time...

 * There were two choices. -> scene
 * There were four lines of content. -> a_knot.a_stitch // how to access inner stitich
 


== scene ==

* first -> first // if use +, that makes it a sticky choice, one you can always choose (ex. for linearity idea)
* second -> second
* third -> third
+ repeat choice -> repeat
* -> fallback // this is a fall back choice

= first 
first
* go back -> scene

= second
second
* go back -> scene

=third
third
* go back -> scene
* -> END // need to put here since above choice will disappear after being chosen


= fallback
Fallback choice
-> END

= repeat

{& ->first | "three" | "two" | "one" | "WOAH"} // sequence that it will rotate through; put an ampersand infront if want it indefinite, put a ! if you want it to only go through once -> will show nothing beyond that; use ~ to show a random one

->scene


- They lived happily ever after.
    -> END