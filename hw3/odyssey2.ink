// Megan Kuo, mlk6une

VAR SO = "partner"
VAR COUNTER = 0
VAR GLOBAL_COUNTER = 0
VAR GOT_DRINK = 0

// 0 month variables
VAR TOOK_MELATONIN = 0
VAR LISTEN_MUSIC = 0
VAR LOOK_INSTAGRAM = 0
VAR MONTH = 0

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
-> meet_up

=== meet_up ===

A couple days before your 2 year anniversary, which just so happens to be Valentine's Day, your {SO} texts you, asking to talk.

Your mind races with what that could mean, but you text back:

* "ok"

- The two of you meet at your usual spot -- the cute Korean café near your house. 
When you get there, you see your {SO} already sitting down in the corner you two always sit. You notice they haven't ordered yet, and ask if they want you to buy them their usual drink -- a flat white. They say no, but tell you to feel free to get one for yourself.

* [go order your favorite]

    You head over to the counter and order a matcha latte and smile a little, thinking about how your {SO} always jokes that it tastes like grass. Once you pick up your drink, you head back over to the table and sit down.
    
    ~ GOT_DRINK = 1

* [sit down]

-
-> break_up

=== break_up ===

Your {SO} asks you how you are, and the two of you chit-chat a bit idly. You feel your heart stuck in your throat, as your mind swirls with what they could want to talk about.

* [\[Valentine's Day plans?\]]
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

-> 0_months

=== 0_months ===

// #CLEAR lol only on web

...

February: 0 months

->first_night

=== first_night ===

VAR CHOICES_EXPLORED = 0

Later that night: 

You lay in bed as you try to fall asleep.
-> restless0

=== restless0 ===

{ 
    - CHOICES_EXPLORED == 3 && COUNTER < 2:
        * [Sleep.]
        -> ending_0
    - CHOICES_EXPLORED == 3:
        * [Think about your ex.]
        -> ending_0
}

* [Listen to some music]
    -> listen_music
            
            
// * [Listen to a YouTube video]
// * [Read your book]

* [Scroll on your phone]
    -> scroll_phone1
            
* [Take some melatonin]
    -> take_melatonin


== ending_0 ==

VAR LOOPS = 0

{
    - COUNTER > 1:
        -> restless_ending
        // { LOOPS < 10:
            // You miss them.
            // ~ LOOPS++
            -> ending_0
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

-> 1_months


== slept_ending ==

You wake up in the morning, a little groggy and puffy-eyed, but rested well enough. After lying in bed for another 10 minutes, you sigh and roll out of bed. 
You know it won't be easy to move on, but the day trudges ahead anyways.

-> 1_months

//////////////////////////

== 1_months ==
~MONTH++

You spend the rest of the month feeling a little lost. There are many moments where you catch yourself wondering if your ex-{SO} is free to hang out -- and then you remember. Sometimes, you just start crying and you're not sure why. 
You wonder if you had done something wrong. 

...

March: 1 month


Later that night: 

You lay in bed as you try to fall asleep.
~CHOICES_EXPLORED = 0
~ GLOBAL_COUNTER += COUNTER
~COUNTER = 0

-> restless1

=== restless1 ===


{ 
    - CHOICES_EXPLORED == 3 && COUNTER < 2:
        * [Sleep.]
        -> ending_1
}

* [Listen to some music]
    -> listen_music
            
            
// * [Listen to a YouTube video]
// * [Read your book]

* [Scroll on your phone]
    { 
        - LOOK_INSTAGRAM == 0:
            -> scroll_phone1
        - else: 
            ->scroll_phone2
    }
    

* [Take some melatonin]
    -> take_melatonin

-> END


== ending_1 ==

~LOOPS = 0

{
    - COUNTER > 1:
        -> miss_them
    
    - else:
        -> slept_ending1

}

= miss_them
    You miss them. 
    -> slept_ending1

== slept_ending1 ==

You wake up in the morning, the sunlight filtering through the blinds. You have plans to get breakfast with a friend at Bodos, so you roll out of bed and start getting ready for the day. 
You know it won't be easy to move on, but the day starts again anyways.

// * You'll be alright.

-> 2_months

// 2 months challenge

== 2_months == 

You spend the rest of the month finding yourself again, bit by bit. You and your ex-{SO} used to watch Better Call Saul together -- you couldn't touch it for a while, but one day you found yourself watching it and laughing. 
It had also been a while since you last painted, maybe 6 months? You find yourself painting again, too.

...

April: 2 months


Later that night: 

You lay in bed as you try to fall asleep.
~CHOICES_EXPLORED = 0
~ GLOBAL_COUNTER += COUNTER
~COUNTER = 0

-> restless2

=== restless2 ===


// { 
//     - CHOICES_EXPLORED == 1:
//         -> text_crisis
    
// }

* [Crochet]
    You pick up your crochet bag, which is full of colorful yarn. Picking up the last project you were working on, you unfold it to reveal a sweater.
    You had been working on it as a gift for your ex-{SO}. They always forgot to bring a jacket with them on your dates, so you were planning on making a sweater to keep them warm.
    ** [Remember] -> text_crisis

* [Journal]
    You pick up your journal, which is full of washi tape, doodles, and polaroids you've taken. Flipping through your journal to today's date, a picture slips out.
    It's a picture of the two of you when you went to the beach together. Even though the water was way too cold in April, they still begged you to go because they liked walking along the beach and wanted to celebrate together.
    ** [Remember] -> text_crisis

* [Read a book]
    You pick up your book, which is full of highlights and notes in the margins. Paging through the book, you find your bookmark and continue to read, until you flip to a particular page.
    You find a two-page illustration of a celebration adorned with small doodles in blue pen around the edges. In big letters reads "happy birthday", with two figures splitting a cake together and a message cheering for many more to come.
    ** [Remember] -> text_crisis

- 
-> text_crisis


=== text_crisis ===

// on mind to text\
Your ex-{SO}'s birthday is tomorrow.
You'd been wondering for weeks whether you should text them to wish them happy birthday. Your birthdays were close together, with yours being only 4 days later.
* [Grab your phone]

- You grab your phone from where it sits on your nightstand, and open up your messages.
* [Type in their number]

- Even though you deleted their number, you still had it memorized.

* "hey!
-
* just wanted to wish you happy birthday
- 
* hope all is well with you!"

- You wonder whether they will respond. The two of you hadn't spoken since they came over to grab their stuff from your place the week after you broke up. 

Your finger hovers over 'send'.

* You [send the text] press 'send', and see the little bubble form. Your message has been delivered. 
    -> waiting
* [You delete the text]

    {
        - GLOBAL_COUNTER > 3: // when the player has consistently chosen to reminisce
        You press 'send', and see the little bubble form. Your message has been delivered. 
        -> waiting
        - else:
            You hold the delete button, and watch as each letter of your message disappears. 
            -> ending_2
    }

// ~ GLOBAL_COUNTER = COUNTER

// go back to cafe, order matcha

=== waiting ===

You continue to scroll on your phone, checking your notifications every so often. 
* [Scroll]
** [Check]
- Scroll, check.
Nothing yet. 
* [Scroll]
** [Scroll]
*** [Check]
- Scroll scroll, check.
Nothing.
You go back into the messages app and try to unsend your message -- but see that it's been read. 
Maybe they just read it, and haven't had the chance to respond yet?
So you wait some more, continuing to scroll through feeds and click through stories and links and pictures.
But they still don't text you back.

You start to realize they may never reply.

-> ending_2

=== ending_2 ===

April: 2 months and 4 days later

You wake up in the morning, and leisurely get ready for the day.

Once you get into your car, you drive to the cute Korean café near your house. 
When you get there, you sit down at a table by the window that you've learned gets the most light in the early afternoon. 
* [go order your favorite]

    You head over to the counter and order a matcha latte and smile a little. Once you pick up your drink, you head back over to the table and sit down.
-

As you savor each sip, you take a deep breath. You know it won't be easy to move on, but each day you heal a little bit more anyways.

* You'll be alright.

-> END



/////// choice storylines ////////

=== listen_music ===

~LISTEN_MUSIC++
{ 
    - LISTEN_MUSIC == 1:
        You go on Spotify and shuffle your "nighttime beatz" playlist. Seventeen's "Home" starts playing, and it reminds you of when you and your ex-{SO} went to a concert together in New York. They didn't know most of the songs, but laughed at how happy you were cheering for your favorite songs.
            
            ** [Skip the song]
                You tap the skip button on your phone, and it skips to Brian Eno's "Music For Airports." It's atmospheric and peaceful.
                ~ CHOICES_EXPLORED++
                // -> restless0
                -> return_to_main
                
            ** [Keep letting it play]
                ~ COUNTER++
                ~ CHOICES_EXPLORED++
                You remember heading to late-night dinner together after the concert. Surrounded by the bustling crowd, all you could focus on at the time was the way their hand fit into yours. You miss walking with them. -> return_to_main
    - LISTEN_MUSIC == 2: 
        You go on Spotify and shuffle your "NEW nighttime beatz" playlist. One of your friends, Casey, heard you mention how your music reminded you of your ex. They immediately sent you a bunch of new songs, including "Home is Where the SNES Is", which starts playing. 
        It makes you feel a little sentimental, but it makes you chuckle to remember Casey's obsession with alternative indie.
        ~ CHOICES_EXPLORED++
        -> return_to_main
        
}
        
=== scroll_phone1 ===
~LOOK_INSTAGRAM++

// { 
//     - LOOK_INSTAGRAM == 1:
You idly scroll Reddit for a bit, before instinctually opening Instagram. You're unable to stop yourself in time, and see that your ex-{SO} has posted a new story.
    ~ CHOICES_EXPLORED++

** [Look at their story]
    You see your ex at a bar, smiling wide as they clink their glass with a bottle held by one of their friends, Ava.
    For most of your ex's friends, you got along with each other pretty easily when you would hang out together. But Ava never seemed to like you that much, which bothered you a little. 
    Seeing your ex partying so soon after your break up hurts. You close Instagram.
    
    ~ COUNTER++
    -> return_to_main
    
** [Close Instagram]
    You immediately swipe out of Instagram and turn off your phone. You make a plan to unfollow their account.
    -> return_to_main

-> return_to_main
        
    // - LOOK_INSTAGRAM == 2:
=== scroll_phone2 ===
        // -> restless0
        // look at photos + delete them?
Soon after the break-up, you blocked and unfollowed them on Instagram. But you still have pictures of the two of you together on your phone. You've been going back and forth on whether you should delete them.
    ~ CHOICES_EXPLORED++
    ~ COUNTER++

    ** You [delete the photos] decide to delete the photos. As you pick through all of the photos on your phone, memories you shared flash through your mind. 
        When you both met in school, and would goof off while studying in the library together.
        The first time they cried in front of you -- you were watching the Barbie movie together, and they grabbed your hand, eyes tearing up as they watched Barbie wonder if she was enough.
        That time that you went to the Seventeen concert together, and got cheap, deliciously greasy pizza together after -- they looked so funny with the cheese from their slice dangling to their mouth.
    
        *** [Delete the photos]
            You tap 'delete', and the photos are gone forever. You regret it for a split second, before closing out the photos app.
            -> return_to_main
            
        *** [Keep the photos]
            You tap 'cancel', keeping the photos. You worry that maybe, one day, you'd regret deleting them. You decide to think about it for a little while longer.
            ~ COUNTER++
        
            -> return_to_main
            
    ** You [leave the photos] decide to keep the photos. You worry that maybe, one day, you'd regret deleting them. You decide to think about it for a little while longer.
        -> return_to_main
        
//     - else:
//         -> END
// }


- -> return_to_main

=== return_to_main ===
{ 
    - MONTH == 0:
        -> restless0
    - MONTH == 1:
        -> restless1
    - else:
        -> END
}

=== take_melatonin ===
You open the top drawer of your nightstand and fish out your bottle of melatonin. You open the bottle. 
 
    
+ You [take the pills] take 2 pills out and pop them into your mouth, chasing them with some water from the mug nearby.
    ~CHOICES_EXPLORED++
    
    { 
    - TOOK_MELATONIN == 0:
        Lying back down in bed, you exhale deeply and close your eyes. You fall asleep.
        ~TOOK_MELATONIN++
        {
            - MONTH == 0:
        -> slept_ending
            - MONTH == 1:
                -> slept_ending1
        }
        
    - else:
        Lying back down in bed, you exhale deeply and close your eyes. You lay there for what feels like hours, but can't seem to fall asleep. Maybe you've been using it too much lately?
    }
    
    
+ You [put the bottle back] decide not to take any melatonin. You close back the lid and place the bottle back into your nightstand.
    ~CHOICES_EXPLORED++
    -> return_to_main
        
-
-> return_to_main
        
