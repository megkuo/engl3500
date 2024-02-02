-> 0_months

=== 0_months ===

// #CLEAR lol only on web


February: 0 months

->first_night

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
