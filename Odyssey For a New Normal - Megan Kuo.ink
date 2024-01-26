// to nest: use more asterisks

VAR SO = "partner"
VAR COUNTER = 0
VAR GOT_DRINK = 0
-> partner_choice

=== partner_choice ===

Boyfriend, girlfriend, or partner?

* Boyfriend!
  ~ SO = "boyfriend" // how to change variables
* Girlfriend!
   ~ SO = "girlfriend"
* Partner!
   ~ SO = "partner"


-  
-> 0_months 

=== 0_months ===

// #CLEAR lol only on web


February: 0 months

A couple days before your 2 year anniversary, which just so happens to be Valentine's day, your {SO} texts you asking to talk.

Your mind races with what that could mean, but you text back:

* "ok"

- The two of you meet at your usual spot -- the cute, Korean café near your house. 
When you get there, you see your {SO} already sitting down in the corner you two always sit. You notice they haven't ordered yet, and ask if they want you to buy them their usual drink -- a flat white. They say no, but tell you to feel free to get one for yourself.

* [go order your favorite]

    You head over to the counter and order a matcha latte and smile a little, thinking about how your {SO} always jokes that it tastes like grass. Once you pick up your drink, you head back over to the table and sit down.
    
    ~ GOT_DRINK = 1

* [sit down]

-
-> break_up

=== break_up ===

Your {SO} asks you how you're are, and the two of you chit-chat a bit idly. You feel your heart stuck in your throat, as your mind swirls with what they could want to talk about.

* [\[Valentine's day plans?\]]
* [\[Is something wrong?\]]
* [\[A sudden trip to Japan?\]]
* [\[Is something wrong?\]]
* [\[They won the lottery and want to split it with you?\]]
* [\[Is something wrong?\]]

- Your {SO} pauses, taking a deep breath as they look away.

They want to break up.

* "...Okay."

{ GOT_DRINK == 1:
    Your drink loses its taste.
}

-> first_night

=== first_night ===

VAR CHOICES_EXPLORED = 0

Later that night: 

You lay in bed as you try to fall asleep.
-> restless

= restless

{ 
    - CHOICES_EXPLORED == 3 && COUNTER < 2:
        * [Sleep.]
        -> ending
    - CHOICES_EXPLORED == 3:
        * [Think about your ex.]
        -> ending
}

* [Listen to some music]
    You go on Spotify and shuffle your "nighttime beatz" playlist. Seventeen's "Home" starts playing, and it reminds you of when you and your ex-{SO} went to a concert together in New York. They didn't know most of the songs, but laughed at how happy you were cheering for your favorite songs.
        
        ** [Skip the song]
            You tap the skip button on your phone, and it skips to Brian Eno's "Music For Airports." It's atmospheric and peaceful.
            ~ CHOICES_EXPLORED++
            -> restless
            
        ** [Keep letting it play]
            You remember heading to late-night dinner together after the concert. Surrounded by the bustling crowd, all you could focus on at the time was the way their hand fit into yours. You miss walking with them.
            ~ COUNTER++
            ~ CHOICES_EXPLORED++
            -> restless
            
            
// * [Listen to a YouTube video]
// * [Read your book]

* [Scroll on your phone]
    You idly scroll Reddit for a bit, before instinctually opening Instagram. You're unable to stop yourself in time, and see that your ex-{SO} has posted a new story.
    
        ** [Look at their story]
            You see your ex at a bar, smiling wide as they clink their glass with a bottle held by one of their friends, Ava.
            For most of your ex's friends, you got along with each other pretty easily when you would hang out together. But Ava never seemed to like you that much, which bothered you a little. 
            Seeing your ex partying so soon after your break up hurts. You close Instagram.
            
            ~ COUNTER++
            ~ CHOICES_EXPLORED++
            -> restless
            
        ** [Close Instagram]
            You immediately swipe out of Instagram and turn off your phone. You make a plan to unfollow their account tomorrow.
            ~ CHOICES_EXPLORED++
            -> restless
            
* [Take some melatonin]
    You open the top drawer of your nightstand and fish out your bottle of melatonin. You open the bottle.
    
    ** [Take the pills]
        You take 2 pills out and pop them into your mouth, chasing them with some water from the mug nearby.
        Lying back down in bed, you exhale deeply and close your eyes. You fall asleep.
        -> slept_ending
        
    ** [Put the bottle back]
        You decide not to take any melatonin. You close back the lid and place the bottle back into your nightstand.
        ~ CHOICES_EXPLORED++
        -> restless


// - Your mind wanders:

// + "Why did they want to break up?"
// + "One sheep, two sheep, three sheep..."
// variable to keep track of looping

// -> ending

== ending ==

VAR LOOPS = 0

{
    - COUNTER > 1:
        -> restless_ending
        // { LOOPS < 10:
            // You miss them.
            // ~ LOOPS++
            -> ending
        // }
        
    - COUNTER > 0:
        -> slept_ending
    
    - else:
        -> slept_ending

}
    
= restless_ending
For the rest of the night, you twist and turn in bed as your mind whips between memories of your ex and chastizing yourself for thinking of them.

-> miss_them_lots

= miss_them
    You miss them. 
    -> slept_ending


= miss_them_lots

    { LOOPS == 10:
        -> tired_ending
    }
    You miss them.
    ~ LOOPS++
    -> miss_them_lots


== tired_ending ==

After a long time, the sun starts to peek through your blinds, and you can hear birds chirping form outside. Even when your alarm goes off, you keep lying in bed for another 10 minutes. Eventually, you sigh and roll out of bed. 
You know it won't be easy to move on, but the day trudges ahead anyways.

* You'll be alright.

-> END


== slept_ending ==

You wake up in the morning, a little groggy and puffy-eyed, but rested well enough. After lying in bed for another 10 minutes, you sigh and roll out of bed. 
You know it won't be easy to move on, but the day trudges ahead anyways.

* You'll be alright.

-> END