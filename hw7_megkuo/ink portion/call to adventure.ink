INCLUDE name_creation.ink
// In Ink, we're trying to make our GameStories legible by working on the Weave. Write a narrative that features a narrator who attempts to dictate the player's choices, and responds to their obedience / disobedience, as in The Stanley Parable. Instead of using a set number of elements, try to focus on these two objectives:

// Write an engaging story where choices branch and gather to "weave" together the narrative. Remember, Nguyen claims that games are a way of "writing down forms of agency, of inscribing them in an artifact."
// Write legible code that would make sense to a "future you" or another Ink coder. (Comments help!)
// To do this successfully, we suggest using all the elements we've learned thus far (Knots, Stitches, Conditionals, Variable Text) with a special focus on multi-level Choices, multi-level Gathers, and the newest element, Labels. 

// Bowser boss:

// Explore and use the following "Advanced" ideas in the Inky Documentation Chapter 3.2:
// Advanced: all options can be labelled
// Advanced: Loops in a weave
// Advanced: diverting to options


// call to adventure to save the world
// choose mentor
// pick what you want to learn
// choose between saving world or saving yourself

VAR first = ""
VAR second = ""
VAR third = ""
VAR fourth = ""
VAR fifth = ""
VAR sixth = ""
VAR seventh = ""

-> name_selection

== name_declare == 

VAR name = ""
~ name = first + second + third + fourth + fifth + sixth + seventh

-> story_beginning

== story_beginning == 

- Once upon a time, there was a child born in a small village located in the outskirts of the Fantaila Kingdom. As they cried in their mother's arms, she smiled down at them as she uttered their name -- the name that would forever be engraved in history.

"{name}."

{name} had a pleasant childhood, often playing with their friends in the village marketplace and in the grassy fields outside of the village boundaries. 
One day, when {name} was 12 years old, their best friend, Joseph, invited them to pick up swordplay alongside them.

"Old McAllister offered to teach me how to use a sword after his guard shifts at the gate! Do you want to join in?" This led to the moment that {name} first picked up their sword. {name} agreed to go.

* "That's awesome! I'm in!" [] said {name}. 
    -- (go_to_fight) They went with Joseph to the village gate in the late afternoon, and Old McAllister handed them each a small, wooden sword.
    
    -- (fight_intro) "Now, in basic swordplay, there are three moves you can take: striking, blocking, and slicing. The goal is to watch your opponent and anticipate what they'll choose, then to act appropriately. Striking can only be stopped by blocking, blocking can be thwarted by swiping, and slicing will be overpowered by striking." 
    After some basic training, Old McAllister told the two friends to try training with each other. 
    VAR player = ""
    VAR player_health = 3
    VAR joseph_health = 3
    VAR joseph = ""
    -- (fight)
    // ~joseph = "{~strike|defend|slice}" // not doing random after all
    ~joseph = "{&defend|slice|strike}"
    
    {&Joseph and {name} stood opposite to one another. They watched each other intently, waiting to see who makes the first move. {name} decided to slice to start with.|They both shook off the previous bout, and settled back into the battle stances they'd just learned. This time, {name} would strike.|Joseph's arms trembled a bit, but so did {name}'s. {name} decided to defend for this one.}
    ++ [Strike!] {name} yelled as they gripped their sword and striked Joseph.
        { 
        - joseph == "defend":
            However, {name}'s sword is deftly blocked by Joseph's, and with a surge of strength he shoved them back, and {name} fell to the ground. {name} should have sliced.
            ~player_health -= 1
        - joseph == "slice":
            Joseph's eyes widened as {name}'s sword struck his arm, sending him tumbling to the ground as he winced in pain. {name} had outwitted him.
            ~joseph_health -= 1
        - else:
            Both of them struck at the same time, their swords bouncing off one another.
            
        }

    ++ [Defend!] {name} held up their sword in a defensive stance, tense and anticipating an attack.
        {
        - joseph == "defend":
            Both of them blocked at the same time.
        - joseph == "slice":
            {name}'s eyes widened as Joseph's sword struck their arm, sending them tumbling to the ground as they winced in pain. {name} had made a miscalculation.
            ~player_health -= 1
        - else:
            Joseph's sword is deftly blocked by {name}'s, and with a surge of strength they shoved him back, and Joseph fell to the ground. {name} felt strong.
            ~joseph_health -= 1
            
        }
    ++ [Slice!]
        {
        - joseph == "defend":
            {name} got around Joseph's defensive stance and sliced at his arm, causing Joseph to wince. {name} had done well.
            ~joseph_health -= 1
        - joseph == "slice":
            Both of them sliced at one another, hitting each others sword before they both leapt backwards. 
            
        - else:
            {name}'s eyes widened as Joseph's sword struck their arm, sending them tumbling to the ground as they winced in pain. {name} had made a mistake in changing their mind at the last possible moment.
            ~player_health -= 1
                
            }
    -- (health_check)
    // HEALTH
    // {player_health}
    // {joseph_health}
        { 
          - player_health == 0:
            // PLAYER LOST
            -> lost
          - joseph_health == 0:
            // JOSEPH LOST
            -> won
          - else:
                ->fight
        }
* "No thank you!" [] said {name}. 
    {name} seemed to be confused -- maybe they were just a pacifist and were worried about hurting their friend? But learning how to wield a sword would be the best way to learn how to not hurt people with it. 
    Joseph pressed them again, pleading "please, it would be so much fun to learn together!
    ** "Fine, I'll go with you[."]," said {name}. They felt a little hesitant, but decided to face their fears like a true hero. ->go_to_fight
    ** "No, I'm really good. You go on ahead[."]," said {name}. They waved Joseph goodbye as he headed towards the village gate, and {name} decided to go play by themselves in the meantime. As {name} frolicked in the grass fields instead, they felt a dawning realization that they should head to the village gate, even just to cheer on their friend. {name} headed over to the gate.
        *** [Walk to gate]
            {name} ambled over to the village gate, searching the nearby area for their friend. They eventually found him with Old McAllister, who upon seeing {name}, offered them a wooden sword.
            **** [Take sword] -> fight_intro
        *** [Continue to play in field]
            \[{name}, you're really so adamant to not learn swordfighting, huh? Fine, have it your way.\] 
            
            After that day, the course of history was forever altered. Joseph became known across the land for his heroices and skilled swordsmanship, while his friend, {name}, lived and died in the small village they'd grown up together in.
            
            [Are you happy now, {name}?]
            -> END
    
    
- -> END

== lost ==
{name}, defeated and bruised, lay on the ground panting for breath. 

[{name}, this is what you get for not listening to me.]

Joseph extended his hand towards {name}, glowing with his first ever victory. {name} took his hand.

* [Take hand]
    {name} grasped Joseph's hand to stand up besides him. They shook hands, and Old McAllister congratulated them on their first steps towards learning the ways of the sword.
    
    The road ahead for {name} would be treacherous, but they'd always have their best friend by their side.
    
* [Strike him]
    For some reason, {name} tightened their grip on their sword before leaping up at Joseph and swung at him. Fortunately, because Joseph was standing above {name}, he was able to dodge the attack. 
    This paled in comparison to the look of surprise and betrayal he had on his face.
    Old McAllister took Joseph away while yelling at {name} for being such a sore loser. Still, out of pity, he hollered for a medic to come over.
    [How pathetic, {name}. You really can't do anything right.]
    {name} backed away from the scene, before fleeing into the nearby woods outside the village.
    They had won, but were more alone than ever. Because they couldn't even muster the decency to accept their loss, they crawled into a cave and died there 15 years later, just as Joseph took their place to change history.
    Even after all that time, Joseph could never forget his old friend that taught him an important lesson: that losers will be losers.
    

- -> END

== won ==
 Joseph lied on the ground, breathing hard from the long fight. Bruises lined both of their arms, but {name} continued to stand. 
 
 {name}, of course, offered their hand to Joseph to help him get back up. 
 
 * [Offer hand]
    {name} extended their hand towards their best friend, who wrily grinned and grasped their hand to stand up besides {name}. They shook hands, beaming at each other. Old McAllister is said to even have wiped a tear away at the beautiful sight of their friendship.
    
    The road ahead for {name} would be treacherous, but they'd always have their best friend by their side.
 * [Strike him]
    For some reason, {name} tightened their grip on their sword before leaping at Joseph and swung at him. Fortunately, the sword was wooden rather than steel, but Joseph's face had a long gash down the left side. 
    This paled in comparison to the look of pain and betrayal he had on his face.
    Old McAllister shooed {name} away, yelling at them for hitting someone who was already down and hollering for a medic to come over.
    {name} backed away from the scene, before fleeing into the nearby woods outside the village.
    They had won, but were more alone than ever. Because they were a massive jerk.
    
    Still, they would eventually set out on their quest that would irrevocably change history.
 
- ->END
    
    
    


- They lived happily ever after.
    -> END
