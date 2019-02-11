1  POKE 140,1: POKE 162,30: POKE 163,128: RESTORE 208: FOR X=0 TO 41: READ Y: POKE 62976+X,Y: NEXT X: ON  ERROR  GOTO 209
2  CLS :H=11:D=128:W=0:G=0:T=0:E=0: DIM I(3):J=0: RESTORE 188: DIM P(24): FOR X=1 TO 24: READ P(X): NEXT X:R=0:A=1:C0=1
3  CURS 1,4: SPEED 255: PRINT "  DREAMCARDS presents...  ": SPEED 0
4  CURS 20,6: PRINT "C A V E R N S    by John Hardy (1983)": CURS 0: PLAY 0,40: CLS :F=0:U=0
5  CURS 1,7: PRINT [A63 45]
6  IF Z>0 AND Z<>5 AND M<>20 THEN 111
7  IF A<18 OR C0=1 AND (P(21)=A OR P(21)=-1) THEN 10
8  PRINT "It's very dark, too dark to see anything...I'm scared!"
9  GOTO 72
10  IF A=1 THEN  PRINT "You are standing in a darkened room. There is a door to the     north."
11  IF A=2 THEN  PRINT "You are in a forest clearing before a small bark hut. There are no windows, and locked door to the south. The latch was engaged when you closed the door."
12  IF A=3 THEN  PRINT "You are deep in a dark forest. In the distance you can see a    mighty river."
13  IF A=4 THEN  PRINT "You are standing in a field of four-leafed clovers. There is a  small hut to the north."
14  IF A=13 THEN  PRINT "You are standing on a rock in the middle of a mighty oak forest.Surrounding you are thousands of poisonous mushrooms."
15  IF A=15 THEN  PRINT "You are on a cliff face over looking the river."
16  IF A=5 THEN  PRINT "The forest has opened up at this point. You are standing on a   cliff overlooking a wide glacial river. A small foot-beaten pathleads south."
17  IF A=6 THEN  PRINT "You are standing at {the rocky edge of the mighty river Gioll.   The path forks east and west."
18  IF A=7 THEN  PRINT "You are on the edge of an enormous crater. The rim is extremely slippery. Clouds of water vapour rise high in the air as the    Gioll pours into it."
19  IF A=8 THEN  PRINT "The path 3to the east stops here. You are on a rocky outcrop,    projected about 15 feet above the river. In the distance,       a tiny bridge spans the river."
20  IF A=9 THEN  PRINT "You are on the lower slopes of Mt. Ymir. The forest stretches   far away and to the west. Arctic winds blow fiercely, it's very cold!"
21  IF A=10 THEN  PRINT "You stand on a rocky precipice high above the river, Gioll;     Mt. Ymir stands to the north. A flimsy string bridge spans the  mighty river."
22  IF A=11 THEN  PRINT "You have made your way half way across the creaking bridge.     It sways violently from side to side. It's going to collapse anysecond!!"
23  IF A=12 THEN  PRINT "You are on the southern edge of the mighty river, before        the string bridge."
24  IF A=14 THEN  PRINT "You are in a clearing in the forest. An ancient basalt rock      formation towers above you. To your south is the entrance of a  VERY interesting cave..."
25  IF A=16 THEN  PRINT "You are just inside the cave. Sunlight pours into the cave      lighting a path to the east and another to the south. I don't   mind saying I'm a bit scared!"
26  IF A=17 THEN  PRINT "This passage appears to be a dead end. On a wall before you is  carved `Find the Sacred Key of Thialfi'."
27  IF A=19 THEN  PRINT "You are in the legendary treasure room of the black elves of    Svartalfheim. Every red-blooded Viking has dreamed of e(ntering  this sacred room."
28  IF A=20 THEN  PRINT "You can see a small oak door to the east. It has been locked    from the inside."
29  IF A=22 THEN  PRINT  "You are standing in an east-west corridor. You can feel a faint breeze coming from the east."
30  IF A=23 THEN  PRINT "You are standing in what appears to have once been a torture    chamber. Apart from the rather comprehensive range of instumentsof absolutely inhuman agony,"
31  IF A=23 THEN  PRINT "coagulated blood stains on the walls and mangled bits of bone onthe floor make me think that a number of would be adventurers   croaked it here!"
32  IF A=24 THEN  PRINT "You stand in a long tunnel which has been bored out of the rock.It runs from north to south. A faint glow comes from a narrow   crack in the eastern wall."
33  IF A=26 THEN  PRINT "You are in a large round room with a number of exits. The walls have been painted in a mystical dark purple and a big chalk staris drawn in the centre of "
34  IF A=26 THEN  PRINT "the floor. Note: This is one of the hidden chambers of the      infamous pagan sect, the monks of Loki. Norse folk believe the]m to be gods."
35  IF A=27 THEN  PRINT "You are standing on a narrow ledge, high above a subterranean   river. There is an exit to the east. "
36  IF A=28 THEN  PRINT "You are on a balcony, overlooking a huge cavern which has been  converted into a pagan temple. Note: this temple ha_s been       dedicated to Loki, the god of"
37  IF A=28 THEN  PRINT "fire, who came to live in Svartalfheim after he had been        banished to exile by Odin. Since then he has been waiting       for the `End Of All Things'."
38  IF A=33 THEN  PRINT "You are in the central cave of a giant bat colony. Above you    hundreds of giant bats hang from the ceiling and the floor is   covered in centuries of "
39  IF A=33 THEN  PRINT "giant bat droppings. Careful where you step! Incidentally, the  smell is indescribable."
40  IF A=35 THEN  PRINT "You are in the temple. To the north is a locked gate and on the wall is a giant statue of Loki, carved out of the living rock   itself!"
41  IF A=37 THEN  PRINT "You stand in an old and musty crypt, the final resting place of hundreds of Loki devotees. On the wall is carved:``What 3 letter2 word completes a word "
42  IF A=37 THEN  PRINT "starting with 'G---' and another ending with '---X'' Note: The   monks of Loki must have liked silly puzzles.  Putrefaction and decay fills the air here."
43  IF A=38 THEN  PRINT "You are in a tiny cell. The western wall has now firml<y closed  again. There is a ventilator shaft on the eastern wall."
44  IF A=40 THEN  PRINT "You are on another ledge high above a subterranean river. The   water flows in through a hole in the cavern roof, to the north."
45  IF A>40  AND  A<45 THEN  PRINT "Somehow you have gotten into the complex drainage system of thisentire cavern network!!"
46  IF A=45 THEN  PRINT "You are standing near an enormous waterfall which brings water  down from the surface, from the river Gioll."
47  IF A=47 THEN  PRINT "You are standing before a stone staircase which leads           ?southwards."
48  IF A=48 THEN  PRINT "You are on a narrow and crumbling ledge. On the other side of   the river you can see a magic castle. (Don't ask me why it's    magic...I just know it is)"
49  IF A=49 THEN  PRINT "You are by the drawbridge which has just lowered itself....by   vmagic!!"
50  IF A=50 THEN  PRINT "You are in the courtyard of the magic castle. WOW! This castle  is really something! On the wall is inscribed 'hzb tzozi'.      A secret escape tunnel leads south"
51  IF A=51 THEN  PRINT "You are in the powder magazine of this really super castle."4J IF A=53 THEN  PRINT "You stand before a small wooden bridge which crosses the river."
53  IF A=52 THEN  PRINT "You are on the eastern side of the river. A small tunnel leads  east into the cliff face."
54  IF A=54 THEN  PRINT "You are in a conduit draining into the river. The water comes upto your knees and is freezing cold. A narrow service path leads south."
55  IF A=18 OR A=21 OR A=25 OR A>28 AND A<32 OR A=34 OR A=36 OR A=39 OR A=46 OR A=53 THEN  PRINT "You are deep in a dark cavern."
56  IF (A=10 OR A=12) AND H=128 THEN  PRINT "Two of the ropes have snapped under your weight. It's totally unfit to cross again."
57  IF A=14 AND P(4)=0 THEN  PRINT "You can also see the bloody corpse of an enormous dragon."
58  IF A=48 AND D=49 THEN  PRINT  " A mighty golden drawbridge spans the waters."
59  IF U>200 THEN  PRINT "Your candle is growing dim."
60  IF U<230 THEN 63
61 C0=0
62  PRINT "In fact...it went out!"
63 V=0
64  FOR L=7"24
65  IF P(L)=A THEN  LET V=V+1
66  NEXT L
67  IF V=0 THEN 72
68  PRINT "You can also see..."
69  FOR L=7 TO 24
70  IF P(L)=A THEN  GOSUB 165
71  NEXT L
72 V=0: FOR L=1 TO 6: IF P(L)=A THEN  LET V=V+1: GOSUB 207
73  NEXT L: IF V=0 THEN 77
74  PRINT "Nearby there lurks..."
75  FOR L=1 TO 6: IF P(L)=A THEN  GOSUB 165
76  NEXT L
77  PRINT :R=1: PRMT ( )
78  IF Z>0 AND Z<>5 AND M<>20 THEN 111
79  INPUT A0$: IF A0$="" THEN [79 ELSE  LET A0$=" "+A0$+" ":U=U+1
80  FOR X=1 TO  LEN (A0$):Y= ASC (A0$(;X)): IF Y>64 AND Y<91 THEN  LET A1$=A0$(;1,X-1)+(Y+32)+A0$(;X+1):A0$=A1$
81  NEXT X: CLS
82  RESTORE 184
83  FOR M=7 TO 24: READ N0$,N1$
84  IF  SEARCH (A0$,N1$)>0 THEN  NEXT *M 86
85  NEXT M:N0$="":N1$="":M=0
86  IF A=11 THEN  LET H=128
87  IF A=2 THEN  LET J=1
88  IF A=45 THEN  LET W=43
89  IF A=35 THEN  LET W=0
90  IF P(Z24)<>38 THEN  LET G=39
91  IF A=49 THEN  LET D=49
92  IF  SEARCH (A0$," look ")>0 THEN  LET R=0: GOTO 5
93  IF  SEARCH (A0$," list ")=0 THEN 101
94  PRINT "You are carrying ";:V=0
95  FOR L=7 TO 24
96  IF P(L)=-1 THEN  LET V=V+1
97  NEXT L
98  IF V=0 THEN  PRINT "nothing.": GOTO 5
99  PRINT : FOR L=7 TO 24: IF P(L)=-1 THEN  GOSUB 165
100  NEXT L: GOTO 5
101  IF  SEARCH (A0$," quit ")=0 THEN 107
102 S=0: FOR X=7 TO 17: IF P(X)= DATA -1 THEN  LET S=S+X-6
103  IF P(X)=1 THEN  LET S=S+(X-6)*2
104  NEXT X
105  PRINT \\"You have a score of";S;" out of a possible 126 points in";U;" moves.": GOSUB 192: PRINT "Another adventure? ";:Y0$= KEY $
106 Y0$= KEY $: IF Y0$="N" OR Y0$="n" THEN 209 ELSE  IF Y0$="Y" OR Y0$="y" THEN  RUN  ELSE 106
107  FOR Z=1 TO 6: IF P(Z)=A THEN  NEXT *Z 109
108  NEXT Z:Z=0: GOTO 166
109  IF Z= POKE 5 THEN  PRINT "The giant bat picked you up and carried you to another place.":A=33:R=0:P(5)=P(5)+7: GOTO 5
110  GOTO 166
111  RESTORE 182: FOR N=1 TO Z: READ K0$,K1$: NEXT N
112  PRINT "AUUUUUGH...you've just been killed by a";K0$;K1$;"!!": GOTO 102
113  RESTORE 189: FOR Q=0 TO 3: READ M0$: IF  SEARCH (A0$,M0$)>0 THEN  NEXT *Q 115
114  NEXT Q: GOTO 124
115  IF P(8)=-1 OR P FOR (8)=A THEN 117
116 Q= INT ( RND *4)
117  RESTORE 174: FOR N=1 TO A
118  FOR O=0 TO 3: READ I(O): NEXT O: NEXT N
119 B=I(Q)
120  IF B=0 THEN  PRINT "You can't go that way"
121  IF B=128 THEN  PRINT "You stumble and fall into the chasm and smash yourself to a pulp on the rocks below.": GOTO 102
122  IF B>0 THEN  LET A=B
123 R=0: GOTO 5
124  IF  SEARCH (A0$," galar ")=0 THEN 126
209 FR=0: PRINT "Suddenly a magic wind carried you to another place...":A=16: GOTO 5
126  IF  SEARCH (A0$," ape ")=0 THEN 128
127  PRINT "Hey! the eastern wall of the crypt slid open...":E=38: GOTO 5
128  IF M<1 THEN  PRINT "eh?": GOTO 5
129  IF P(M)=-1 OR P(M)=A THEN 130 ELSE  PRINT "Where? I can't see it.": GOTO 5
130  IF  SEARCH (A0$," get ")=0 THEN 137
131  RETURN Q=0
132  FOR X=7 TO 24
133  IF P(X)=-1 THEN  LET Q=Q+1
134  NEXT X
135  IF Q>10 THEN  PRINT "You are carrying too many objects.": GOTO 5
136 P(M)=-1: GOTO 5
137  IF  SEARCH (A0$," drop ")=0 THEN 139
138  LET P(M)=A: GOTO 5
139  ON M-18 GOTO 141,143,157,163
140  PRINT "How am I supposed to use it?": GOTO 5
141  IF A<>2 AND A<>35 THEN  PRINT "It won't open!": GOTO 5
142  PRINT "You opened the door.":P(19)=A:R=0: IF A=2 THEN  LET A=1: GOTO 5 ELSE  LET A=37: GOTO 5
143  IF Z=0 THEN  PRINT "But there's nothing to kill...": GOTO 5
144 F=F+1: IF  RND *7+15> FLT (F) THEN 146
145  PRINT  "You swing with your sword but miss and the creature smashes your skull.": GOTO 102
146  IF  RND <.38 THEN 153
147 L= INT ( RND *4): IF Z=5 THEN 109
148  IF L=0 THEN  PRINT "You attack but the creature moves aside."
149  IF L=1 THEN  PRINT "The creature deflects your blow."
150  IF L=2 THEN  PRINT "The foe is stunned but quickly regains his balance."
151  IF L=3 THEN  PRINT "You missed and he deals a blow to your head."
152  GOTO 5
153  PRINT "The sword strikes home and your foe dies...":P(M1)=-1: IF Z=3  OR  Z=5 THEN  LET P(Z)=P(Z)+10 ELSE  LET P(Z)=0: IF Z=1 THEN  PRINT "Hey! Your sword has just crumbled into dust!!":P(20)=35
154  IF Z<>4 THEN  PRINT \"Suddenly a black cloud descends and the corpse vaporizes into   nothing."
155 Z=0
156  GOTO 5
157  IF P(9)=-1 OR P(9)=A THEN 159
158  PRINT "That won't burn, Dummy...In fact, the candle went out.":C0=0: GOTO 5
159  IF C0=1 THEN 161
160  PRINT "But the candle is out, stupid!!": GOTO 5
161  PRINT "The fuse burnt away and....BOOM!!....the explosion blew you out of the way (Lucky!)":R=0: IF A>1 THEN  LET A=A-1: IF A=20 THEN  LET T=19
162 P(9)=0: GOTO 5
163  IF A=28 THEN 164 ELSE  PRINT "It's too dangerous!!!": GOTO 5
164  PRINT "You descend the rope, but it drops 10 feet short of the floor.  You jump the rest of the way.":R=0:P(M)=A:A=35: GOTO 5
165  RESTORE 182: FOR K=1 TO L: READ H0$,H1$: NEXT K: PRINT "a";H0$;H1$;", ";: RETURN
166  RESTORE 190: FOR O=1 TO 16: READ P0$: IF  SEARCH (A0$,P0$)>0 THEN  NEXT *O 169
167  NEXT O
168  GOTO 113
169  ON O GOTO 131,138,139,139
170  IF vO<7 THEN  PRINT "Nothing happens!"
171  IF O>6 AND O<13 THEN  PRINT "Please tell me how."
172  IF O>12 THEN  PRINT "I can't!"
173  PRINT : GOTO 79
174  DATA 2,0,0,0,0,0,3,4,2,5,5,0,2,5,0,9,0,6,3,4,5,0,7,8,0,0,128,6,0,0,6,0,0,10,4,0,9
175  DATA H,4,0,10,12,128,128,H,13,13,0,12,12,14,12,15,16,0,13,0,14,0,0,14,18,0,17,0
176  DATA 0,d16,0,16,0,23,0,0,0,20,0,21,23,0,T,0,24,0,20,0,23,21,16,22,0,18,18,21,26,0
177  DATA 18,0,27,24,0,24,27,29,25,18,0,0,28,0,0,27,0,0,33,0,26,29,31,0,0,32,0,0,0
178  DATA 33,30,0,0,0,31,34,0,0,0,0,33,0,0,0,0,39,0,35,40,0,35,0,E,W,0,0,G,0,36,38,0
179  DATA 45,48,36,128,46,43,54, STEP 42,46,43,41,43,46,38,42,44,47,47,0,47,0,40,0,128
180  DATA 47,0,47,47,0,45,46,0,40,128,0,D,0,0,48,50,0,52,49,51,0,0,50,0,50,0,53,50
181  DATA 54,0,0,52,0,53,41,0
182  DATA "n evil"," wizard "," fiery"," demon ","n axe wielding"," troll "," fire breathing"," dragon "," giant@"," bat "
183   DATA "n old and gnarled"," dwarf "
184   DATA " gold"," coin "," useful looking"," compass "," home made"," bomb "," blood red"," ruby "," sparkling"," diamond "
185   DATA  " moon-like"," pearl ","n interesting"," stone "," diamond studded"," ring "," magic"," pendant "," most holy"," grail "," mirror like"," shield "
186   DATA " nondescript black"," box ","n old an rusty"," key "," double bladed"," sword "," small"," candle "," thin and tatty"," rope "," red house"," brick "," rusty ventilation"
187   DATA " grill ") INT H  DATA  36,19,10,14,17,47,8,1,51,45,22,46,54,19,19,19,19,0,34,7,18,15,24,38
189   DATA  " north "," south "," west "," east "
190   DATA  " take "," put "," using "," with "," cut "," break "," unlock "," open "," kill "," attack "
191   DATA  " light "," burn "," up "," down "," jump "," swim "
192  PRINT "This gives you an adventurer's ranking of:"
193  IF S<20 THEN  PRINT "Hopeless beginner"
194  IF S<50 AND S>19 THEN  PRINT "Experienced loser"
195  IF S<100 AND S>49 THEN  PRINT "Average Viking"
196  IF S<126 AND S>99 THEN  PRINT "Excellent...but you've left something behind!"
197  IF S=126 THEN  PRINT "Perfectionist and genius!!"
198  RETURN
199  INPUT A0$: CLS : RETURN
200  PRINT "There, before you in a swirling mist stands an evil wizard with his hand held outwards...`Thou shall not pass' he cries."
201  GOTO 77
202  PRINT "Before the entrance of the cave lies an enormous, green,        sleeping dragon. Realizing your presence, its eyes flicker open"
203  PRINT "and it leaps up, breathing jets fire at you."
204  GOTO 77
205  PRINT "From around the corner trots an old and gnarled drawf carrying  a lantern. `My job is to protect these stone steps!' he says andlunges at you with his dagger."
206  GOTO 77
207  IF L=1 THEN 200 ELSE  IF L=4 THEN 202 ELSE  IF L=6 THEN 205 ELSE  RETURN
208  DATA  17,0,9,1,1,0,120,18,19,121,18,19,3,197,33,30,246,1,12,0,237,176,193,203,122,40,235,195,33,128,12,32,67,79,80,89,82,73,71,72,84,13
209  USR (62976)
