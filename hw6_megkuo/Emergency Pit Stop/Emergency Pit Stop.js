var storyContent = ﻿{"inkVersion":20,"root":[["\n","\n","\n","\n","\n","\n","\n","\n","\n","\n",{"->":"intro"},["done",{"#f":5,"#n":"g-0"}],null],"done",{"intro":["^You're driving to visit your best friend from high school who moved 4 hours away from you.","\n","^Around 2 hours into the drive, you're blasting early 2000's music and belting along. As you drive, grass fields surround you on both sides.","\n","^You decide to check the time and see it's about 3 pm -- you should be able to make it in time for dinner.","\n","^However, you also notice that the low fuel light is on -- has been on, as your gas tank seems to be near the empty line.","\n","^You need to find the nearest gas station ASAP.","\n",{"->":".^.checking"},{"checking":[["^You check","\n",["ev",{"^->":"intro.checking.0.2.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-0","flg":18},{"s":["^your phone",{"->":"$r","var":true},null]}],["ev",{"^->":"intro.checking.0.3.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str","/ev",{"*":".^.^.c-1","flg":18},{"s":["^the glove compartment",{"->":"$r","var":true},null]}],{"*":".^.c-2","flg":24},{"c-0":["ev",{"^->":"intro.checking.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.2.s"},[{"#n":"$r2"}],"^ and tap the screen, but it doesn't turn on. Confused, your brow furrows as you hold down the power button. Crap.","\n",["ev","str","^check for a charger cord","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["\n","^You check around for a charger cord, then remember you lent it to your brother when his break. Crap crap.","\n",{"->":".^.^.^.^.^"},{"#f":5}]}],{"#f":5}],"c-1":["ev",{"^->":"intro.checking.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.3.s"},[{"#n":"$r2"}],"^ in search of a map, but remember that you live in the 2020's and people don't carry around maps anymore. Oh, how you long for the days of MapQuest right now! ","\n",{"->":".^.^.^"},{"#f":5}],"c-2":["\n","^the highway signs, gleeful when you see one that says there's an exit coming up with a gas station a couple miles into town.","\n","^You take the nearest exit and enter town.","\n",{"->":"A"},{"#f":5}]}],{"#f":1}],"#f":1}],"gas_meter":["ev",{"CNT?":"C.west"},"!","/ev",[{"->":".^.b","c":true},{"b":["\n",["ev","visit",5,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"ev","du",3,"==","/ev",{"->":".^.s3","c":true},"ev","du",4,"==","/ev",{"->":".^.s4","c":true},"ev","du",5,"==","/ev",{"->":".^.s5","c":true},"nop",{"s0":["pop","^The dial is juuuust above the empty line.",{"->":".^.^.41"},null],"s1":["pop","^The dial has officially hit empty -- but your car is still moving! ",{"->":".^.^.41"},null],"s2":["pop","^The dial has started to go past the empty line -- you didn't know that was possible...",{"->":".^.^.41"},null],"s3":["pop","^Your car is starting to make some weird noises -- like sputtering. You have a feeling it'll run out really soon.",{"->":".^.^.41"},null],"s4":["pop","^The car rolls to a stop... You've run out of fuel. ",{"->":"gas_check"},{"->":".^.^.41"},null],"s5":["pop",{"->":".^.^.41"},null],"#f":5}],"\n",{"->":".^.^.^.5"},null]}],"nop","\n","ev",{"CNT?":"C.west"},"/ev",[{"->":".^.b","c":true},{"b":["\n",["ev","visit",5,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"ev","du",3,"==","/ev",{"->":".^.s3","c":true},"ev","du",4,"==","/ev",{"->":".^.s4","c":true},"ev","du",5,"==","/ev",{"->":".^.s5","c":true},"nop",{"s0":["pop","^Your gas tank has reverted to how much was left earlier, with the dial is juuuust above the empty line.",{"->":".^.^.41"},null],"s1":["pop","^The dial has officially hit empty -- but your car is still moving! ",{"->":".^.^.41"},null],"s2":["pop","^The dial has started to go past the empty line -- you didn't know that was possible...",{"->":".^.^.41"},null],"s3":["pop","^Your car is starting to make some weird noises -- like sputtering. You have a feeling it'll run out really soon.",{"->":".^.^.41"},null],"s4":["pop","^The car rolls to a stop... You've run out of fuel. ",{"->":"gas_check"},{"->":".^.^.41"},null],"s5":["pop",{"->":".^.^.41"},null],"#f":5}],"\n",{"->":".^.^.^.11"},null]}],"nop","\n",{"->":"next_intersection","var":true},{"#f":1}],"gas_check":[[["ev",{"^->":"gas_check.0.0.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str",{"VAR?":"next_intersection"},{"^->":"I"},"==","/ev",{"*":".^.^.c-0","flg":19},{"s":["^Wait, is that the gas station up ahead?",{"->":"$r","var":true},null]}],["ev",{"^->":"gas_check.0.1.$r1"},{"temp=":"$r"},"str",{"->":".^.s"},[{"#n":"$r1"}],"/str",{"VAR?":"next_intersection"},{"^->":"I"},"!=","/ev",{"*":".^.^.c-1","flg":19},{"s":["^Darn it.",{"->":"$r","var":true},null]}],{"c-0":["ev",{"^->":"gas_check.0.c-0.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.0.s"},[{"#n":"$r2"}],"\n","^You end up walking over to the gas station in disbelief that you had almost made it.","\n","^Eventually, you're able to refuel your car and continue on your merry way. You lucked out!","\n","end",{"#f":5}],"c-1":["ev",{"^->":"gas_check.0.c-1.$r2"},"/ev",{"temp=":"$r"},{"->":".^.^.1.s"},[{"#n":"$r2"}],"\n","^Fortunately, you were able to pull over to the side of the road before your car stopped. Glancing around, you see some people walking by.","\n","^With no other choice, you decide to summon the courage to ask where the gas station is: ",{"->":"asking"},"\n",{"#f":5}]}],{"#f":1}],"asking":[["ev","str","^ask the dad with his daughter","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^ask the older lady speedwalking by","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^ask the group of teens","/str","/ev",{"*":".^.c-2","flg":20},{"*":".^.c-3","flg":24},{"c-0":["\n","^You decide to ask the dad on a stroll with his daughter.","\n","^When you ask, he scratches his chin and points vaguely to the northwest, rattling off a list of instructions longer than you can remember. The little girl waves goodbye as they continue to walk. ",{"->":"asking"},"\n",{"#f":5}],"c-1":["\n","^You decide to ask the older lady speedwalking nearby.","\n","^When you ask, she immediately beams and tells you that it's quite a ways away but it's a good gas station to go to because her grandchild, Clive, works there; even though they've raised the prices on the coffee they sell there, which is such a shame because when she worked there as a teenager, coffee was $0.25 for a cup...","\n","^You feel a bit overwhelmed, but thank her for her advice as she leaves. ",{"->":"asking"},"\n",{"#f":5}],"c-2":["^ ","\n","^You decide to ask the group of teens biking.","\n","^They ask why you don't just use Boogle Maps or something, and you sheepishly admit that your phone had ran out of battery.","\n","^One of them takes out their phone and shows you the way to get there -- you're a bit directionally-challenged, but it's helpful nonetheless. Another pipes in and says the slushies at Zheets is better than the ones at Awaw.","\n","^You thank them as they leave, giving them $10 as a treat. They whoop and cheer as they bike away. ",{"->":"asking"},"\n",{"#f":5}],"c-3":["\n","^Wandering around the town, you pick a direction to head towards and hope for the best.","\n","^Life seems to take mercy on you, as you eventually find yourself at the gas station!","\n","^Then, you realize you forgot to keep track of where you left your car...","\n","^Sighing, you decide to take a break before worrying about that.","\n","end","end",{"#f":5}]}],{"#f":1}],"A":[["^You approach an intersection with a McDonaldson's on the northeast corner. The entrance and exit to the highway is to the south. ",["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop",{"->":".^.^.23"},null],"s1":["pop","^You think that this intersection looks a little familiar.",{"->":".^.^.23"},null],"s2":["pop","^You're certain that you've been to this intersection before...",{"->":".^.^.23"},null],"#f":5}],"\n","^You decide to drive...","\n","ev","str","^north","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^west","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^east","/str","/ev",{"*":".^.c-2","flg":4},"ev","str","^south","/str","/ev",{"*":".^.c-3","flg":4},{"c-0":["^ ",{"->":"A.north"},"\n",{"#f":5}],"c-1":["^ ",{"->":"A.west"},"\n",{"#f":5}],"c-2":["^ ",{"->":"A.east"},"\n",{"#f":5}],"c-3":["^ ",{"->":"A.south"},"\n",{"#f":5}]}],{"north":["^You go north.","\n","ev",{"^->":"B"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"west":["^You go west.","\n","ev",{"^->":"C"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"east":["ev",{"^->":"H"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"south":["^You end up back on the highway in the direction you just came from. Your car quickly runs out of gas before you can refill it, and you end up on the side of the road hoping someone will take pity on you.","\n","^You wait... ",{"->":"A.waiting"},"\n",{"#f":1}],"waiting":[[["ev","visit",5,"%","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"ev","du",3,"==","/ev",{"->":".^.s3","c":true},"ev","du",4,"==","/ev",{"->":".^.s4","c":true},"nop",{"s0":["pop","^twiddling your thumbs...",{"->":".^.^.35"},null],"s1":["pop","^picking at your nails...",{"->":".^.^.35"},null],"s2":["pop","^rocking back and forth on your feet...",{"->":".^.^.35"},null],"s3":["pop","^watching all the cars zoom past...",{"->":".^.^.35"},null],"s4":["pop","^shivering because of the approaching night...",{"->":".^.^.35"},null],"#f":5}],"\n","ev","str","^wait","/str","/ev",{"*":".^.c-0","flg":4},{"c-0":["^ ",{"->":".^.^.^"},"\n","end",{"#f":5}]}],{"#f":1}],"#f":3}],"B":[["^You approach another intersection with a hardware store on the southeast corner, and what looks like a park to the northwest. ",["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop",{"->":".^.^.23"},null],"s1":["pop","^You think that this intersection looks a little familiar.",{"->":".^.^.23"},null],"s2":["pop","^You're certain that you've been to this intersection before...",{"->":".^.^.23"},null],"#f":5}],"\n","^You decide to drive...","\n","ev","str","^north","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^west","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^east","/str","/ev",{"*":".^.c-2","flg":4},"ev","str","^south","/str","/ev",{"*":".^.c-3","flg":4},{"c-0":["^ ",{"->":"B.north"},"\n",{"#f":5}],"c-1":["^ ",{"->":"B.west"},"\n",{"#f":5}],"c-2":["^ ",{"->":"B.east"},"\n",{"#f":5}],"c-3":["^ ",{"->":"B.south"},"\n",{"#f":5}]}],{"north":["^You go north.","\n","ev",{"^->":"E"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"west":["^You go west.","\n","ev",{"^->":"C"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"east":["^You go east.","\n","ev",{"^->":"G"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"south":["ev",{"^->":"A"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"#f":3}],"C":[["^This next intersection has a Peppy Pepper place on the southeast corner ",["ev","visit",1,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^-- it's been ages since you last had pizza from that chain",{"->":".^.^.17"},null],"s1":["pop",{"->":".^.^.17"},null],"#f":5}],"^. A quaint, forested park lies to the northeast. The west has no road, and instead has a vast, lush field of grass. ",["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop",{"->":".^.^.23"},null],"s1":["pop","^You think that this intersection looks a little familiar.",{"->":".^.^.23"},null],"s2":["pop","^You're certain that you've been to this intersection before...",{"->":".^.^.23"},null],"#f":5}],"\n","^This intersection is a T-intersection, so there are only 3 directions you can choose from.","\n","^You decide to drive...","\n","ev","str","^north","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^east","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^south","/str","/ev",{"*":".^.c-2","flg":4},"ev","str","^go west anyways","/str","/ev",{"*":".^.c-3","flg":20},{"c-0":["^ ",{"->":"C.north"},"\n",{"#f":5}],"c-1":["^ ",{"->":"C.east"},"\n",{"#f":5}],"c-2":["^ ",{"->":"C.south"},"\n",{"#f":5}],"c-3":["^ ",{"->":"C.west"},"\n",{"#f":5}]}],{"north":["^You go north.","\n","ev",{"^->":"D"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"west":[["^You go west anyways, even though there is no road. Cars honk as you barrel past the wooden fence, your car rocking as you start driving into the empty grass field.","\n","^There is a scarecrow up ahead.","\n","ev","str","^hit the scarecrow","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^avoid the scarecrow","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n","^You gun it towards the scarecrow, aiming to mow it down with your car.","\n","^The scarecrow gets sent flying upwards, and you laugh manicaically as you drive into the sunset.","\n","^You are chaos incarnate.","\n","end",{"#f":5}],"c-1":["\n","^You swerve to the right to avoid the scarecrow, but turn too hard while going too fast. Your car tips over and starts to roll, leaving a trail of compressed grass in its wake.","\n","^You'd probably die from this, but some higher being likes your style and decides to grant you another chance at life. You find yourself back at where you started, car intact.","\n","ev",true,"/ev",{"VAR=":"saw_the_divine","re":true},"ev",{"^->":"A"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":5}]}],{"#f":1}],"east":["^You go east.","\n","ev",{"^->":"B"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"south":["ev",{"^->":"A"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"#f":3}],"D":[["^As you approach another intersection, you spot a school on the southeast corner. To the north and west, you see some townhouses and cul-de-sacs, but the road doesn't connect over to them. ",["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop",{"->":".^.^.23"},null],"s1":["pop","^You think that this intersection looks a little familiar.",{"->":".^.^.23"},null],"s2":["pop","^You're certain that you've been to this intersection before...",{"->":".^.^.23"},null],"#f":5}],"\n","^You decide to drive...","\n","ev","str","^east","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^south","/str","/ev",{"*":".^.c-1","flg":4},{"c-0":["^ ",{"->":"D.east"},"\n",{"#f":5}],"c-1":["^ ",{"->":"D.south"},"\n",{"#f":5}]}],{"east":["^You go east.","\n","ev",{"^->":"E"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"south":["^You go south.","\n","ev",{"^->":"C"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"#f":3}],"E":[["^At this intersection, there's a big box store and ginormous parking lot to the north, but the road doesn't connect to it. To the southwest is a playground, and to the southeast is a large track with a field in the center. ",["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop",{"->":".^.^.23"},null],"s1":["pop","^You think that this intersection looks a little familiar.",{"->":".^.^.23"},null],"s2":["pop","^You're certain that you've been to this intersection before...",{"->":".^.^.23"},null],"#f":5}],"\n","^You decide to drive...","\n","ev","str","^west","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^east","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^south","/str","/ev",{"*":".^.c-2","flg":4},{"c-0":["^ ",{"->":"E.west"},"\n",{"#f":5}],"c-1":["^ ",{"->":"E.east"},"\n",{"#f":5}],"c-2":["^ ",{"->":"E.south"},"\n",{"#f":5}]}],{"west":["^You go west.","\n","ev",{"^->":"D"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"east":["^You go east.","\n","ev",{"^->":"F"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"south":["^You go south.","\n","ev",{"^->":"B"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"#f":3}],"F":[["^At yet another intersection, you spot a baseball field on the southwest corner and a soccer field to the north. To the southeast, you see a small but bustling ice cream parlor next to a car wash. ",["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop",{"->":".^.^.23"},null],"s1":["pop","^You think that this intersection looks a little familiar.",{"->":".^.^.23"},null],"s2":["pop","^You're certain that you've been to this intersection before...",{"->":".^.^.23"},null],"#f":5}],"\n","^You decide to drive...","\n","ev","str","^west","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^east","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^south","/str","/ev",{"*":".^.c-2","flg":4},{"c-0":["^ ",{"->":"F.west"},"\n",{"#f":5}],"c-1":["^ ",{"->":"F.east"},"\n",{"#f":5}],"c-2":["^ ",{"->":"F.south"},"\n",{"#f":5}]}],{"west":["^You go west.","\n","ev",{"^->":"E"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"east":["^You go east.","\n","ev",{"^->":"I"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"south":["^You go south.","\n","ev",{"^->":"G"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"#f":3}],"G":[["^This intersection has a desolate Malmart on the southwest corner. There's a small inn on the southeast corner, which has a fire hall across the street from it to the northeast. Finally, to the northwest is a thin forest. ",["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop",{"->":".^.^.23"},null],"s1":["pop","^You think that this intersection looks a little familiar.",{"->":".^.^.23"},null],"s2":["pop","^You're certain that you've been to this intersection before...",{"->":".^.^.23"},null],"#f":5}],"\n","^You decide to drive...","\n","ev","str","^north","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^west","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^east","/str","/ev",{"*":".^.c-2","flg":4},"ev","str","^south","/str","/ev",{"*":".^.c-3","flg":4},{"c-0":["^ ",{"->":"G.north"},"\n",{"#f":5}],"c-1":["^ ",{"->":"G.west"},"\n",{"#f":5}],"c-2":["^ ",{"->":"G.east"},"\n",{"#f":5}],"c-3":["^ ",{"->":"G.south"},"\n",{"#f":5}]}],{"north":["^You go north.","\n","ev",{"^->":"F"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"west":["^You go west.","\n","ev",{"^->":"B"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"east":["^You go east.","\n","ev",{"^->":"H"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"south":[["^You go south.","\n","^You stare in horror as you see the green highway signs above telling you that you're re-entering the highway you originally exited off of.","\n","^You contemplate reversing off of the entrance ramp.","\n","ev","str","^reverse","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^continue and face the consequences of your oversight","/str","/ev",{"*":".^.c-1","flg":20},{"c-0":["\n","^You suddenly slam on your breaks and shift into reverse. Without even glancing at the cars behind you, you start to reverse back into the intersection. Cars honk as they speed past you on both sides, but you are determined.","\n","^You backup all the way until you're back behind the original light you entered the intersection from. A bad driver never misses their turn.","\n","^While you didn't enter the highway, you do feel a karmic weight on your soul.","\n","^As you should.","\n",["ev","str","^karma - 1","/str","/ev",{"*":".^.c-0","flg":20},{"c-0":["^ ","\n","ev",{"^->":"G"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":5}]}],{"#f":5}],"c-1":["\n","^You commit to your mistake and continue driving straight. Before you have the chance to exit off of the highway, your car runs out of gas.","\n","^As you exit your car, pulled over to the side of the road with its hazards on, you start to resolve yourself to walking back into town to find a gas station.","\n","^However, as if some higher being smiles upon your decision to not be a self-interested jerk and reverse on the highway ramp, a truck pulls over near you. They offer to drive you to the nearest gas station!","\n","^Entering back into town, they go east, then north -- the gas station appears on your left. Who knew it was that straight-forward?","\n","^After getting some gas and some Taco Bell-flavored sunflower seeds, you return to your car and carry on driving down the highway into the sunset.","\n","end",{"#f":5}]}],{"#f":1}],"#f":3}],"H":[["^You arrive at an intersection with a row of apartment buildings on the southwest corner, and a visitor center to the northwest. To the east is a private drive that leads to a farm. ",["ev","visit",2,"MIN","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"ev","du",2,"==","/ev",{"->":".^.s2","c":true},"nop",{"s0":["pop",{"->":".^.^.23"},null],"s1":["pop","^You think that this intersection looks a little familiar.",{"->":".^.^.23"},null],"s2":["pop","^You're certain that you've been to this intersection before...",{"->":".^.^.23"},null],"#f":5}],"\n","^You decide to drive...","\n","ev","str","^north","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^west","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^south","/str","/ev",{"*":".^.c-2","flg":4},{"c-0":["^ ",{"->":"H.north"},"\n",{"#f":5}],"c-1":["^ ",{"->":"H.west"},"\n",{"#f":5}],"c-2":["^ ",{"->":"H.south"},"\n",{"#f":5}]}],{"north":["^You go north.","\n","ev",{"^->":"I"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"west":["^You go west.","\n","ev",{"^->":"G"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"south":["^You go south.","\n","ev",{"^->":"A"},"/ev",{"VAR=":"next_intersection","re":true},{"->":"gas_meter"},{"#f":1}],"#f":3}],"I":[["^As you continue to drive, you gasp -- there are two gas stations up ahead! Which do you pull into?","\n","ev","str","^Zheets","/str","/ev",{"*":".^.c-0","flg":20},"ev","str","^Awaw","/str","/ev",{"*":".^.c-1","flg":20},"ev","str","^Flip a coin!","/str","/ev",{"*":".^.c-2","flg":20},{"c-0":["^ ",{"->":"I.Zheets"},"\n",{"#f":5}],"c-1":["^ ",{"->":"I.Awaw"},"\n",{"#f":5}],"c-2":["^ ",{"->":"I.coin_flip"},"\n",{"#f":5}]}],{"Zheets":["^You swiftly pull into the Zheets gas station and start to fill up your car with gas.","\n","^The gas price also seems a bit lower at this gas station, which is pretty neat!","\n","^After refueling both your car and your stomach, you hit the road and carry on.","\n","end",{"#f":1}],"Awaw":["^You swiftly pull into the Awaw gas station and start to fill up your car with gas.","\n","^The gas price seems a bit higher at this gas station, but gas is gas!","\n","^After refueling both your car and your stomach, you hit the road and carry on.","\n","end",{"#f":1}],"coin_flip":["^Because you have no particular loyalty when it comes to gas stations, you decide to base your decision on a coin flip.","\n","^While stopped at a light (because of course, you would never do this while still in motion), you dig around your junk compartment to find a South Dakotan quarter.","\n","^You toss the coin. ",["ev","visit",2,"seq","/ev","ev","du",0,"==","/ev",{"->":".^.s0","c":true},"ev","du",1,"==","/ev",{"->":".^.s1","c":true},"nop",{"s0":["pop","^Heads! ",{"->":"I.Zheets"},{"->":".^.^.17"},null],"s1":["pop","^Tails! ",{"->":"I.Awaw"},{"->":".^.^.17"},null],"#f":5}],"\n",{"#f":1}],"#f":3}],"direction":[["ev","str","^north","/str","/ev",{"*":".^.c-0","flg":4},"ev","str","^west","/str","/ev",{"*":".^.c-1","flg":4},"ev","str","^east","/str","/ev",{"*":".^.c-2","flg":4},"ev","str","^south","/str","/ev",{"*":".^.c-3","flg":4},{"c-0":["^ ",{"->":".^.^.^.north"},"\n",{"#f":5}],"c-1":["^ ",{"->":".^.^.^.west"},"\n",{"#f":5}],"c-2":["^ ",{"->":".^.^.^.east"},"\n",{"#f":5}],"c-3":["^ ",{"->":".^.^.^.south"},"\n",{"#f":5}]}],{"north":["^You go north.","\n",{"->":"B"},{"#f":1}],"west":["^You go west.","\n",{"->":"C"},{"#f":1}],"east":["^You go east.","\n",{"->":"H"},{"#f":1}],"south":["^You go south.","\n",{"->":"H"},{"#f":1}],"#f":1}],"global decl":["ev",{"^->":"A"},{"VAR=":"next_intersection"},false,{"VAR=":"saw_the_divine"},"/ev","end",null],"#f":1}],"listDefs":{}};