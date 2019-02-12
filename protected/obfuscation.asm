F600                          ORG  0xf600   ;spare ram

F600   11 00 09               LD   de,0x0900   ;start of BASIC
F603   01 01 00               LD   bc,0x0001
F606   78                     LD   a,b
F607   12                     LD   (de),a
F608   13                     INC  de
F609   79                     LD   a,c
F60A   12                     LD   (de),a
F60B   13                     INC  de
F60C   03                     INC  bc
F60D   C5                     PUSH bc
F60E   21 1E F6               LD   hl,0xf61e
F611   01 0C 00               LD   bc,0x000c
F614   ED B0                  LDIR
F616   C1                     POP  bc
F617   CB 7A                  BIT  7,d
F619   28 EB                  JR   z,0xf606
F61B   C3 21 80               JP   0x8021 ;warm reset

F61E   0C                     DB   0x0c   ;\f
F61F   20                     DB   0x20   ;
F620   43                     DB   0x43   ;C
F621   4F                     DB   0x4f   ;O
F622   50                     DB   0x50   ;P
F623   59                     DB   0x59   ;Y
F624   52                     DB   0x52   ;R
F625   49                     DB   0x49   ;I
F626   47                     DB   0x47   ;G
F627   48                     DB   0x48   ;H
F628   54                     DB   0x54   ;T
F629   0D                     DB   0x0d   ;\n
