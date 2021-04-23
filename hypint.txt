00001POKE140,1:POKE162,30:POKE163,128:CURS1
00002SPEED255:CLS:CURS5,5:PRINT"Dreamcards presents...":SPEED0:CURS1
00003PLAY1,15;0;8,15;0;13,15;0;17,3;0;16,15
00004CURS8,10:PRINT"by John Hardy --- copyright 1983"
00005FORX=1TO30:NORMAL:GOSUB57:INVERSE:GOSUB57:UNDERLINE:NEXTX:NORMAL
00006CLS:HIRES
00007CURS1,10
00008PRINT;" T Class Starship"\;" Reg. No. T8159417-1"
00009PRINT" name: Hopscotch"\;" drive: Davies Warp"\;" crew: one"\;" craft make: GMH Sunblazer XZL"
00010PRINT" usage: Deep Space Scout";
00011CURS1
00012PLOT 0,130TO260,130TO260,0TO258,0TO258,128TO0,128TO0,130
00013PLOT 105,210TO105,225TO115,225TO120,210TO165,210TO180,205TO190,205TO190,200TO175,195TO165,195TO165,190TO115,190TO100,200TO100,210TO120,210
00014PLOT 165,210TO165,205TO180,205
00015PLOT 115,190TO100,180TO155,190
00016PLOT 100,200TO145,200TO145,198TO100,198
00017PLOT 100+200,165TO155+200,145TO165+200,145TO190+200,140TO190+200,135TO165+200,130TO155+200,130TO100+200,110TO115+200,125TO305,130TO300,130TO300,145TO305,145TO315,150TO300,165
00018PLOT 100+200,145TO155+200,145
00019PLOT 100+200,130TO155+200,130
00020PLOT 105+200,137TO120+200,137TO120+200,138TO105+200,138
00021PLOT 100+200,131TO145+200,131
00022PLOT 100+200,144TO145+200,144
00023PLOT 165+200,133TO165+200,142TO175+200,137TO165+200,133:X=0
00024X=X+1:K0$=KEY:PLAY0,1:IFX=100THENCURS40,16:PRINT"Key? ";
00025IFK0$=""THEN24
00026CLS:PRINT"Stardate 45.678.23"\
00027PRINT"You have just completed a successful mission to map the outer   limits of the Garth Beta system. You are returning to your home"
00028PRINT"base, several parsecs away."\\"Pulling down into sub-light speed, your long range scanners     detect a large stationary object in your path. ";
00029PRINT"`A small moon?'  you wonder as the signal grows stronger and stronger. Your tiny craft approaches the object and before long you recognize it as being a large deserted ";
00030PRINT"spaceliner, one of the very early types  employing large Hyperdrive engines. You plot the position of    the ancient wreck in your electronic log ";
00031PRINT"and blast your retros  in order to avoid it."\
00032 GOSUB58
00033PRINT"It is only now, as your engines blast at full thrust, that you  realize that the old craft has its tractor beam activated. The"
00034PRINT"incredible magnetic force is dragging your ship towards it.     Helpless as an insect caught in a spider's web you try to warp, but you are overpowered. ";
00035PRINT"Your sub-ether radio equipment is also jammed by the intense magnetic field."\
00036PRINT"Inch by inch your craft is pulled in. You slowly approach the   open jaws of the enormous docking bay. ";
00037PRINT"The dimensions of this   ship are on a scale which is very difficult to imagine, the     Hyperdrive engines alone stretching several kilometres on each"
00038PRINT"side. The white surface of the ship glows from the millions of  lights which cover it."\
00039 GOSUB58
00040PRINT\"Your ship docks with a clang."\\"You are trapped!!"\
00041PRINT"The only way you can escape this enormous craft is to somehow   deactivate the tractor beam. The problem is, however, that"
00042PRINT"as with all ships of this vintage, the tractor beam logic is    protected by the various defenses of the onboard computer."
00043PRINT"You must therefore deactivate the computer, but remember that italso regulates other important elements aboard the ship,        including the NUCLEAR PILE!! ";
00044PRINT"All tampering you do with the      ship's systems must therefore be with the utmost caution."
00045GOSUB58
00046PRINTSPC(19);"- - -  R U L E S  - - -"\
00047PRINT"Your aim is to escape from the enormous starship which holds youcaptive. To do this you must face many dangerous situations,    take many risks";
00048PRINT" and find and manipulate many objects in order   to reach your goal."
00049PRINT"When directing commands to the computer you must specify exactlywhat you mean:"\SPC(11);"e.g.     Twist bolt with wrench"
00050PRINT"Several commands exist which you must discover yourself, but    here are some to start you off;"
00051PRINTSPC(10);"North     Go north"\SPC(10);"List      Give an inventory of the objects carried"\SPC(10);"Quit      Stop the game "
00052 GOSUB58
00053PRINT\"When wandering the numerous corridors of the ship, always keep  an eye out for hidden passages (including ones above and below  you)."
00054PRINT\"Beware of robots and don't press the wrong buttons!!"\
00055PRINT"....  Good Luck"\:INVERSE:NORMAL
00056PRINT"PLEASE PRESS PLAY ON YOUR TAPE DECK":LOAD
00057CURS8,8:PRINT"H Y P E R    D R I V E   II":RETURN
00058K0$=KEY:IFK0$=""THEN58ELSECLS:RETURN
