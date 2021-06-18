BEGIN D#Silve1

IF ~Global("D#SilverSummoned","GLOBAL",1) !GlobalGT("Silvermorph","GLOBAL",0)~ tob0
  SAY ~And what kind of stupid place is this? There is enough dust here to choke an ogre! You should be more serious about tidying up your room.~
  IF ~~ REPLY ~This isn't my room, it's a Pocket Plane, and I've only just discovered it.~ DO ~SetGlobal("D#SilverSummoned","GLOBAL",2)~ GOTO tob1
END

IF ~~ tob1
  SAY ~So you are bothering me again, aren't you? I don't know why I waste my time with you when there are so many lambs to kill and so little time.~
  IF ~~ REPLY ~I need some help, but you probably aren't the right person for this task.~ GOTO tob2
END

IF ~~ tob2
  SAY ~I'm the right person for ANY task, and you have interrupted my search for lambs. You must take me with you, it is the least you can do!~
  IF ~~ REPLY ~I have changed my mind, for now I don't need your help.~ GOTO tob3
  IF ~~ REPLY ~Yes, just try to be a little quieter than usual.~ DO ~SetGlobal("SilverJoined","LOCALS",1) JoinParty() ~ EXIT
END

IF ~~ tob3
  SAY ~Ok, I will stay here and try to make this horrible hole a little more comfortable. Have you some pink ribbons, no? Ok I will do without them, but it will not be the same...~
  IF ~~ DO ~ChangeAIScript("D#Silv01",OVERRIDE)~ EXIT
END

IF ~Global("D#SilverSummoned","GLOBAL",2) !GlobalGT("Silvermorph","GLOBAL",0)~ tob4
  SAY ~Why you are pestering me again? Don't you see I'm trying to make this place nicer and cleaner?~
  IF ~~ REPLY ~I just want to say you are doing good work.~ EXIT
  IF ~~ REPLY ~To stop you from wrecking this Pocket Plane. Come with me! It's hard to say, but it seems that I need you.~ DO ~ChangeAIScript("D#Silv01",OVERRIDE) SetGlobal("SilverJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~NumTimesTalkedTo(0)
    Global("SilverJoined","LOCALS",0)~ FirstMeeting
  SAY ~Will you play with me? Or has the Master sent you to bother me again?~
  IF ~~ REPLY ~I'm no servant of your damned Master!~ GOTO Greet
  IF ~Class(Player1,THIEF_ALL)~ THEN REPLY ~I don't want to play now, I must escape, but... hey I know an assassin when I see one.~ GOTO BothThief
  IF ~~ REPLY ~I have no time for games, I must escape, sorry.~ GOTO GoAway
END

IF ~~ THEN BEGIN Greet
  SAY @5
  IF ~~ THEN REPLY @6 GOTO Joinyes
  IF ~~ THEN REPLY @7 GOTO Ainquire
  IF ~~ THEN REPLY @8 GOTO GoAway
END

IF ~~ THEN BEGIN BothThief
  SAY @9
  IF ~~ THEN REPLY @6 GOTO Joinyes
  IF ~~ THEN REPLY @11 GOTO Ainquire
  IF ~~ THEN REPLY @12 GOTO GoAway
END

IF ~~ THEN BEGIN Ainquire
  SAY @13
  IF ~~ THEN REPLY @14 GOTO Joinyes
  IF ~~ THEN REPLY @15 GOTO GoAway
END

IF ~~ THEN BEGIN GoAway
  SAY @16
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)
   Global("SilverJoined","LOCALS",0)~ THEN BEGIN ReturnDialogue
  SAY @19
  IF ~~ THEN REPLY @20 GOTO Joinyes
  IF ~~ THEN REPLY @21 GOTO RefusedAgain
END

IF ~~ THEN BEGIN RefusedAgain
  SAY @22
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Joinyes
  SAY @17
  IF ~~ THEN REPLY @18 DO ~SetGlobal("SilverJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @39 DO ~SetGlobal("SilverJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @40 DO ~SetGlobal("SilverJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @41 DO ~SetGlobal("SilverJoined","LOCALS",1) JoinParty()~ EXIT
END

BEGIN D#Silver

IF ~Global("Silvermorph","GLOBAL",4)~ Silmorph1
SAY @183 = @184 = @185
  IF ~~ THEN REPLY @186 DO ~SetGlobal("Silvermorph","GLOBAL",5)~ GOTO Silmorph2
END

IF ~~ Silmorph2
 SAY @187
 IF ~InParty("Edwin")~ GOTO Silmorph3
 IF ~~ EXIT
END

IF ~~ Silmorph3
 SAY @188
 IF ~~ EXIT
END

IF ~Global("Silvermorph","GLOBAL",6)~ Silmorph4
SAY @183
IF ~~ DO ~DisplayStringHead(Player1,@42) Wait(5) DisplayStringHead(Player1,@43) SetGlobal("Silvermorph","GLOBAL",7)~ EXIT
END

////////////////////////////////////////////////////////////////
// Nightmares

IF WEIGHT #0 ~Global("SilDream1","GLOBAL",1)~ Sildream
SAY @112
  IF ~~ DO ~SetGlobal("SilDream1","GLOBAL",2)~ GOTO Sildream2
END

IF ~~ Sildream2
  SAY @113
  IF ~!InParty("Edwin")~ REPLY @116 EXIT
  IF ~!InParty("Edwin")~ REPLY @117 EXIT
  IF ~InParty("Edwin") !Dead("Edwin")~ EXTERN Edwinj Sildream3
END

IF ~~ Sildream4
  SAY @115
  IF ~~ REPLY @116 EXIT
  IF ~~ REPLY @117 EXIT
END

IF WEIGHT #0 ~Global("SilDream1","GLOBAL",3)~ Sildream5
  SAY @118 = @119 = @120 = @121 = @122
  IF ~InParty("Edwin") !Dead("Edwin")~ REPLY @123 DO ~SetGlobal("SilDream1","GLOBAL",4)~ EXTERN Edwinj Sildream6
  IF ~!InParty("Edwin")~ REPLY @125 DO ~SetGlobal("SilDream1","GLOBAL",4)~ EXIT
END

IF WEIGHT #0 ~Global("SilDream1","GLOBAL",5)~ Sildream7
  SAY @126 = @127
  IF ~~ REPLY @128 DO ~SetGlobal("SilDream1","GLOBAL",6)~ EXIT
END

APPEND Edwinj
IF ~~ Sildream6
  SAY @124
  IF ~~ EXIT
END

IF ~~ Sildream3
  SAY @114
  IF ~~ EXTERN D#Silver Sildream4
END
END
////////////////////////////////////
APPEND D#Silver
IF ~Global("#Silveryy1","GLOBAL",1)~ SYouth1
SAY @153
  IF ~~ REPLY @154 DO ~SetGlobal("#Silveryy1","GLOBAL",2)~ GOTO SYouth12
  IF ~InParty("Jan")~ REPLY @155 DO ~SetGlobal("#Silveryy1","GLOBAL",2)~ GOTO SYouth2
  IF ~!InParty("Jan")~ REPLY @155 DO ~SetGlobal("#Silveryy1","GLOBAL",2)~ GOTO SYouth3
END

IF ~~ SYouth2
SAY @156
  IF ~~ GOTO SYouth3
END

IF ~~ SYouth3
SAY @157
  IF ~~ REPLY @158 GOTO SYouth4
  IF ~~ REPLY @159 GOTO SYouth5
END

IF ~~ SYouth4
SAY @160
  IF ~~ DO ~SetGlobal("OneMoTime","GLOBAL",1)~ EXIT
END

IF ~~ SYouth5
SAY @161
  IF ~~ GOTO SYouth12
END

IF ~~ SYouth12
SAY @162
  IF ~~ REPLY @231 GOTO SYouth6
END

IF ~~ SYouth7
SAY @167
  IF ~~ REPLY @168 GOTO SYouth8
  IF ~~ REPLY @169 GOTO SYouth8
END

IF ~~ SYouth8
SAY @170 = @171 = @234 = @172 = @235
IF ~InParty("Aerie")~ REPLY @173 GOTO SYouth8b
IF ~!InParty("Aerie")~ GOTO SYouth8b
END

IF ~~ SYouth8b
SAY @174 = @236 = @175 = @237
IF ~~ GOTO SYouth9
END

IF ~~ SYouth9
SAY @176
  IF ~~ REPLY @177 GOTO SYouth10
END

IF ~~ SYouth10
SAY @178 = @179 = @238 = @180
  IF ~~ REPLY @181 GOTO SYouth11
END

IF ~~ SYouth11
SAY @182
  IF ~~ DO ~SetGlobal("OneMoTime","GLOBAL",3)~ EXIT
END
END

CHAIN D#Silver SYouth6
@163 = @232 = @233 = @164
== D#Silver IF ~InParty("Aerie")~ THEN @165
== Aeriej IF ~InParty("Aerie") !Dead("Aerie")~ THEN @166
END D#Silver SYouth7

//////////////////////////////////////////////////
APPEND SALVANAS
IF WEIGHT #0 ~!InPartySlot(LastTalkedToBy,0)
               Name("D#Silver",LastTalkedToBy)
               Global("Silversalv","LOCALS",0)~ THEN BEGIN s0 
  SAY @23
  IF ~~ THEN DO ~SetGlobal("Silversalv","LOCALS",1)~ EXTERN D#Silver s1
END

IF WEIGHT #0 ~!InPartySlot(LastTalkedToBy,0)
               Name("D#Silver",LastTalkedToBy)
               Global("Silversalv","LOCALS",1)~ THEN BEGIN sother 
SAY @32
IF ~~ THEN DO ~DisplayStringHead("Salvanas",@535) ActionOverride("Salvanas",RunAwayFrom("D#Silver",30))~ EXIT
END

IF ~~ THEN BEGIN s3
  SAY @29
  IF ~~ THEN DO ~Kill("SALVANAS")
  ReputationInc(-1)
  IncrementGlobal("SilverEvil","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN s4
  SAY @30
  IF ~~ THEN EXTERN D#Silver s5
END
END

CHAIN D#Silver s1
   @24
== SALVANAS @25
END D#Silver s2

APPEND D#Silver
IF ~~ THEN BEGIN s2
  SAY @26
  IF ~~ THEN REPLY @27 EXTERN SALVANAS s3
  IF ~~ THEN REPLY @28 EXTERN SALVANAS s4
END

IF ~~ THEN BEGIN s5
  SAY @31
  IF ~~ THEN EXIT
END
END
////////////////////////////////////////////////////////////////
// children in the slave room

EXTEND_BOTTOM girl2 0
IF ~IsValidForPartyDialog("D#Silver")~ EXTERN D#Silver gi1
END

APPEND D#silver
IF ~~ gi1
  SAY @33
  IF ~~ REPLY @34 EXTERN Girl2 1
  IF ~~ REPLY @35 EXTERN Girl2 gi2
END
END

APPEND girl2
IF ~~ gi2
  SAY @36
  IF ~~ THEN DO ~IncrementGlobal("SilverEvil","GLOBAL",1)
  SetGlobal("FreeSlaves","GLOBAL",1)
  AddexperienceParty(3500)
  ReputationInc(-1)
  EscapeArea()~ EXTERN D#Silver gi3
END
END

CHAIN D#Silver gi3
@37
== Korganj IF ~IsValidForPartyDialog("Korgan")~ THEN @406
== Jaheiraj IF ~IsValidForPartyDialog("Jaheira")~ THEN @404
EXIT
////////////////////////////////////////////////////////////////
 
I_C_T idryad2 0 sildryad
== idryad3 @45
== idryad1 @46
== idryad2 @47
== idryad3 @48
== jaheiraj IF ~InParty("Jaheira")~ THEN @49
== idryad1 @50
== idryad2 @51
== idryad3 @52 
== idryad1 @53
== idryad2 @54
== Minscj  IF ~InParty("Minsc")~ THEN @55
== Jaheiraj IF ~InParty("Jaheira")~ THEN @57
== idryad3 @56
== D#silver @58
== idryad1 @59
== idryad2 @60
END
////////////////////////////////////////////////////////////////
// Dancer Fitz - Reliev speech, pod people, Ellesimie's room

I_C_T Imoenj 3 silreliev
== D#Silver @241
== Imoenj @242
== D#silver @243
END

I_C_T Life4 4 silsmartass
== D#Silver @244
END
////////////////////////////////////////////////////////////////
// The escaped clone and Ellesimie's room

I_C_T clone1 1 escclone1
== clone1 @61
== D#silver @62
== clone1 @63
== D#silver @64
END

I_C_T Imoenj 56 silclone
== D#Silver @239
== Imoenj @240
END

EXTEND_BOTTOM Imoenj 22
IF ~IsValidForPartyDialog("D#Silver")~ 
THEN EXTERN D#SILVER Fingertalk
END

CHAIN D#SILVER Fingertalk
@245 = @246 = @247
END D#Silver Fingertalk2

APPEND D#Silver
IF ~~ Fingertalk2
SAY @248
IF ~~ REPLY @312 GOTO Fingertalk3
IF ~~ REPLY @313 GOTO Fingertalk3
IF ~~ REPLY @314 GOTO Fingertalk3
END
END

CHAIN D#SILVER Fingertalk3
@315
== Imoenj @316
EXIT

/////////////////////////////
I_C_T Minscj 240 SilHuntJon
== D#silver @249
END
/////////////////////////////
APPEND D#SILVER
IF
  ~Global("SilRenfeld","GLOBAL",0)
   Dead("rethug01")
   Dead("rethug02")
   Dead("rethug03")
   Dead("rethug04")
   PartyHasItem("MISC5F")~ THEN GOODSTUFF
SAY @400
IF ~~ THEN DO ~SetGlobal("SilRenfeld","GLOBAL",1)~ EXIT
END
END
//////////////////////////////
// Wellyn - Littleman Quest

INTERJECT Wellyn 7 Silverbear
== D#silver @317 DO ~SetGlobal("DLittle","GLOBAL",1)~
END Wellyn 8

/////////////////////////////

INTERJECT Renal 29 Oldtimes
== D#Silver IF ~IsValidForPartyDialog("D#Silver")~ THEN @319
END Renal 30

//////////////////////////////////////////////
// The lost child in the Docks near Guildhall

EXTEND_BOTTOM DLOST 0
IF ~IsValidForPartyDialog("D#Silver")~ THEN EXTERN D#silver lchild1
END

CHAIN D#silver lchild1
@65
== Dlost @66
== D#Silver @67
== Dlost @68
== D#silver @69
END Dlost lchild4

APPEND Dlost
IF ~~ lchild4
  SAY @70
  IF ~~ REPLY @80 DO ~EscapeArea()~ EXTERN D#Silver lchild5
END
END

CHAIN D#Silver lchild5
@38
== MinscJ IF ~InParty("Minsc")~ THEN @390
== AerieJ IF ~InParty("Aerie")~ THEN @71
== ViconiJ IF ~InParty("Viconia")~ THEN @72
== YOSHJ IF ~InParty("Yoshimo")~ THEN @73
== KORGANJ IF ~InParty("Korgan")~ THEN @391
== KeldorJ IF ~InParty("Keldorn")~ THEN @74
== JAHEIRAJ IF ~InParty("Jaheira")~ THEN @75
== NaliaJ IF ~InParty("Nalia")~ THEN @76
== Janj IF ~InParty("Jan")~ THEN @77
== CERNDJ IF ~InParty("Cernd")~ THEN @392
END D#silver lchild2

APPEND D#Silver
IF ~~ lchild2
  SAY @78
  IF ~~ REPLY @79 GOTO lchild3
END

IF ~~ lchild3
  SAY @81
  IF ~~ REPLY @82 EXIT
  IF ~~ REPLY @83 DO ~IncrementGlobal("SilverEvil","GLOBAL",1) ReputationInc(-1)
  SetGlobal("Jaheirainquire","GLOBAL",1)~ EXIT
END
END
///////////////////////////
// Shade Lord
 
EXTEND_BOTTOM SHADEL 3
IF ~IsValidForPartyDialog("D#Silver")~ THEN EXTERN D#silver shade1
END

EXTEND_BOTTOM SHADEL 7
IF ~IsValidForPartyDialog("D#Silver")~ THEN EXTERN D#silver shade1
END

APPEND D#Silver
IF ~~ shade1
  SAY @84
  IF ~~ EXTERN SHADEL shade2
END
END

APPEND SHADEL
IF ~~ shade2
  SAY @85
  IF ~~ THEN DO ~ActionOverride("rngsha02",Enemy())
Enemy()~ EXIT
END
END
///////////////////////////////////////
// Lady Elgea - ransom victim
 
EXTEND_BOTTOM ELGEA 0
IF ~IsValidForPartyDialog("D#Silver")~ THEN EXTERN D#silver elgea1
END

APPEND D#SILVER
IF ~~ elgea1
  SAY @86
  IF ~~ REPLY @87 EXTERN ELGEA 2
  IF ~~ REPLY @88 DO ~IncrementGlobal("SilverEvil","GLOBAL",1)~ EXTERN ELGEA 6
END
END
///////////////////////////////////////
// Crypt King

I_C_T BHCRYPT 0 slivercryptking
== D#Silver @89
== BHCRYPT @90
END
//////////////////////////////////////
// Gem in Chicken

EXTEND_BOTTOM gemfar02 2
IF ~IsValidForPartyDialog("D#Silver") Global("KnowsAboutGem","GLOBAL",1)~ THEN EXTERN D#silver sgemfar1
END

APPEND D#SILVER
IF ~~ sgemfar1
  SAY @91
  IF ~~ REPLY @92 EXTERN gemfar02 8
  IF ~~ REPLY @93 DO ~IncrementGlobal("SilverEvil","GLOBAL",1)~ EXTERN gemfar02 10
END
END
////////////////////////////////////////////////////////////////
// Neeber in TradeMeet

EXTEND_BOTTOM neeber 7
IF ~IsValidForPartyDialog("D#Silver")~ THEN EXTERN D#silver neeber1
END

APPEND D#SILVER
IF ~~ neeber1
  SAY @105
  IF ~~ REPLY @106 GOTO neeber2
  IF ~~ REPLY @107 GOTO neeber3
END

IF ~~ neeber2
  SAY @108
  IF ~~ THEN DO ~DisplayStringHead("Neeber",@535)
  ActionOverride("Neeber",RunAwayFrom("D#Silver",90))~ EXIT
END

IF ~~ neeber3
  SAY @109
  IF ~~ THEN DO ~Kill("NEEBER")
  ReputationInc(-1)
  IncrementGlobal("SilverEvil","GLOBAL",1)~ EXIT
END
END
////////////////////////////////////////////////////////////////
// Lusette & Xzar

EXTEND_BOTTOM Lusette 15
IF ~IsValidForPartyDialog("D#Silver")~ THEN EXTERN D#Silver Lusette1
END

APPEND D#SILVER
IF ~~ Lusette1
SAY @408 = @514
IF ~~ THEN DO ~Kill("HARPASS1")~ EXTERN Lusette 13
END
END
////////////////////////////////////////////////////////////////
// Gravekeeper

EXTEND_BOTTOM Sethle 1
IF ~IsValidForPartyDialog("D#Silver")~ EXTERN D#Silver TorSet1
END

APPEND D#Silver
IF ~~ TorSet1
  SAY @129
  IF ~~ REPLY @130 EXTERN Sethle 6
  IF ~~ REPLY @131 DO ~IncrementGlobal("SilverEvil","GLOBAL",1) FaceObject("Sethle")~ GOTO TorSet2
END
END

CHAIN D#Silver TorSet2
@132
== Sethle @133
== D#Silver @134 = @135
== Sethle @136
== D#Silver @137
== Sethle @138
== D#Silver @139
== Sethle @140
== D#Silver @141
END Sethle 11

////////////////////////////////////////////////////////////////
// TradeMeet Poison merchant - Khellon Encounter

EXTEND_BOTTOM TREVIL01 26
IF ~IsValidForPartyDialog("D#Silver")~ EXTERN D#Silver DruidPois1
END

APPEND D#Silver
IF ~~ DruidPois1
  SAY @142 = @143
  IF ~~ REPLY @144 DO ~IncrementGlobal("SilverEvil","GLOBAL",1)~ EXTERN TREVIL01 33
  IF ~~ REPLY @145 DO ~SetGlobal("SilWallace","GLOBAL",1)~ EXTERN TREVIL01 29
END

IF ~Global("SilverPoison","GLOBAL",1)~ DruidPois2
  SAY @146
  IF ~~ DO ~SetGlobal("SilverPoison","GLOBAL",2)~ EXIT
END
END
//////////////////////////////////////////////////////////////////////
// Ginia

EXTEND_BOTTOM PIRCOR02 13
IF ~IsValidForPartyDialog("D#Silver") Global("GiniaSilver","GLOBAL",0)~ EXTERN D#Silver Sginia1
END

APPEND D#Silver
IF ~~ Sginia1
  SAY @147
  IF ~~ REPLY @148 DO ~SetGlobal("GiniaSilver","GLOBAL",1) IncrementGlobal("SilverEvil","GLOBAL",1)~ EXTERN PIRCOR02 Sginia2
  IF ~~ REPLY @149 DO ~SetGlobal("GiniaSilver","GLOBAL",1)~ EXTERN PIRCOR02 15
END
END

APPEND PIRCOR02
IF ~~ Sginia2
  SAY @150
  IF ~~ DO ~Kill("PIRCOR02") ReputationInc(-1)~ EXIT
END
END
////////////////////////////////////////////////////////////////////////////
// Maevar Torture chambers

I_C_T Maevar 2 silvermaevar
== D#Silver @190 = @191 = @192 = @193
== Maevar @194
== D#Silver @195
END

I_C_T Maevar 3 silvermaevar
== D#Silver @190 = @191 = @192 = @193
== Maevar @194
== D#Silver @195
END

I_C_T Maevar 5 silvermaevar
== D#Silver @190 = @191 =  @192 = @193
== Maevar @194
== D#Silver @195
END

EXTEND_BOTTOM Maeguy01 4
IF ~IsValidForPartyDialog("D#Silver") Global("Silverkamuz1","GLOBAL",0)~ THEN EXTERN D#Silver kamuz1
END

APPEND D#Silver
IF ~~ kamuz1
  SAY @196
  IF ~~ REPLY @197 DO ~SetGlobal("Silverkamuz1","GLOBAL",1)~ EXTERN Maeguy01 5
  IF ~~ REPLY @198 DO ~SetGlobal("Silverkamuz1","GLOBAL",1) IncrementGlobal("SilverEvil","GLOBAL",1)~ EXTERN Maeguy01 10
END
END
////////////////////////////
// underdark entrance

CHAIN IF ~Global("Underdark","GLOBAL",1) AreaCheck("AR2100")~ THEN D#Silver underdark1
@228 DO ~SetGlobal("Underdark","GLOBAL",2)~
== D#Silver IF ~InParty("Edwin")~ THEN @229
== EdwinJ IF ~InParty("Edwin")~ THEN @230
EXIT

CHAIN IF WEIGHT #-1 ~Global("SilSola","GLOBAL",1)~ THEN D#Silver Sola
@545
== UDSola01 @546
== D#silver @547 DO ~SetGlobal("SilSola","GLOBAL",2)~
== UDSola01 @548
== Viconij IF ~InParty("Viconia") !Dead("Viconia")~ THEN @549
EXIT

//////////////////////////////////////////
// Second SS Tale of her life

APPEND D#SILVER
IF ~Global("#Silveryy1","GLOBAL",3)
    See("Edwin") !Dead("Edwin")
    Global("SilverEdwina","GLOBAL",3)~ THEN Tale2
SAY @331
  IF ~IsValidForPartyDialog("Edwin")~ REPLY @336 EXTERN EDWINJ EdwinTale2
  IF ~!InParty("Edwin")~ REPLY @336 GOTO Tale6
  IF ~InParty("Jan") !Dead("Jan")~ REPLY @335 EXTERN JANJ JanTale2
  IF ~InParty("Aerie") !Dead("Aerie")~ REPLY @334 EXTERN AERIEJ AerieTale2
  IF ~~ REPLY @333 GOTO Tale2a
END

IF ~~ Tale2a
SAY @156
IF ~~ REPLY @332 EXIT
END

IF ~~ Tale6
SAY @342 = @343 = @344 = @345 = @346 = @347
IF ~~ REPLY @348 DO ~SetGlobal("#Silveryy1","GLOBAL",4)~ GOTO Tale6b
END

IF ~~ Tale6b
SAY @349 = @350 = @351
IF ~~ REPLY @352 GOTO Tale6c
END

IF ~~ JanTale2a
SAY @341
// IF ~~ GOTO Tale6
IF ~~ EXTERN JANJ JanTale2b
END
END

APPEND JANJ
IF ~~ JanTale2
SAY @338
IF ~~ EXTERN D#Silver JanTale2a
END

IF ~~ JanTale2b
SAY @395
IF ~~ EXTERN D#SILVER Tale6
END
END 

CHAIN AERIEJ AerieTale2
@337
== D#SILVER @340
END D#Silver Tale6

APPEND EDWINJ
IF ~~ EdwinTale2
SAY @339
IF ~~ EXTERN D#Silver Tale6
END
END

CHAIN D#SILVER Tale6c
@353
== KORGANJ IF ~IfValidForPartyDialogue("Korgan")~ THEN @354
== EDWINJ IF ~IfValidForPartyDialogue("Edwin")~ THEN @380
== D#Silver @355 = @356 = @357 = @358 = @359
== AerieJ IF ~IfValidForPartyDialogue("Aerie")~ THEN @360
== D#Silver @361 = @362
== EdwinJ IF ~IfValidForPartyDialogue("Edwin")~ THEN @363
== D#Silver @364 = @365
== EDWINJ IF ~IfValidForPartyDialogue("Edwin")~ THEN @366
== D#Silver IF ~IfValidForPartyDialogue("Edwin")~ THEN @367
== EDWINJ IF ~IfValidForPartyDialogue("Edwin")~ THEN @368
== D#Silver IF ~IfValidForPartyDialogue("Edwin")~ THEN @369 = @370
== EDWINJ IF ~IfValidForPartyDialogue("Edwin")~ THEN @371
== D#Silver IF ~IfValidForPartyDialogue("Edwin")~ THEN @372
== EDWINJ IF ~IfValidForPartyDialogue("Edwin")~ THEN @373 DO ~SetGlobal("EdwinPoof","GLOBAL",1)~
== D#Silver IF ~IfValidForPartyDialogue("Edwin")~ THEN @374
== EDWINJ IF ~IfValidForPartyDialogue("Edwin")~ THEN @375
EXIT

CHAIN IF ~Global("EdwinPoof","GLOBAL",2)
InParty("Edwin") See("Edwin") !Dead("Edwin")~ THEN D#Silver Pissed
@376 = @377
== EDWINJ @378 DO ~GiveItemCreate("SCRL9S","Edwin",0,0,0)~
== D#Silver @379 DO ~SetGlobal("EdwinPoof","GLOBAL",3)~
EXIT

/////////////////////////////////////////////////
CHAIN IF ~AreaCheck("AR1404")
Global("ShadeForest","GLOBAL",1)~ THEN D#Silver ShForestTlk
@401 DO ~SetGlobal("ShadeForest","GLOBAL",2)~
== JAHEIRAJ IF ~IfValidForPartyDialogue("Jaheira") !InParty("Cernd")~ THEN @403
== CERNDJ IF ~IfValidForPartyDialogue("Cernd") !InParty("Jaheira")~ THEN @403
== ANOMENJ IF ~IfValidForPartyDialogue("Anomen") !InParty("Keldorn")~ THEN @402
== KELDORJ IF ~IfValidForPartyDialogue("Keldorn") !InParty("Anomen")~ THEN @402
== KORGANJ IF ~IfValidForPartyDialogue("Korgan")~ THEN @407
EXIT
////////////////////////////////////////////////
APPEND D#SILVER
IF ~AreaCheck("AR0603")
Global("SThief1","LOCALS",0)
Dead("ISHADMT1")~ THEN Jonspeaks
SAY @311
IF ~~ DO ~SetGlobal("SThief1","LOCALS",1)~ EXIT
END
END
////////////////////////////////////////////////
APPEND D#SILVER
IF ~Global("Slyich","LOCALS",1)
See("DuegarClanChief") !Dead("DuegarClanChief")~ THEN Feefifoefum
SAY @285
IF ~~ DO ~SetGlobal("Slyich","LOCALS",2)
Wait(2)~ EXIT
END
END
/////////////////////////////////////////////////
// Littleman Quest Part 2

APPEND D#Silver
IF ~Global("DLittle","GLOBAL",1)
!HasItem("MISC5L","D#Silver")
PartyHasItem("MISC5L")~ THEN BEGIN Wantbear
SAY @508
IF ~~ REPLY @509 DO ~SetGlobal("DLittle","GLOBAL",2) GiveItem("MISC5L","D#Silver")
SetGlobal("Littleman","GLOBAL",0)~ EXIT
END

IF ~Global("DLittle","GLOBAL",1)
HasItem("MISC5L","D#Silver")~ THEN BEGIN Wantbear2
SAY @511
IF ~~ REPLY @509 DO ~SetGlobal("DLittle","GLOBAL",2) SetGlobal("Littleman","GLOBAL",0)~ EXIT
END

IF ~~ Keepbear
SAY @510
IF ~~ REPLY @512 DO ~SetGlobal("Littleman","GLOBAL",1) SetGlobal("DLittle","GLOBAL",3)~ EXTERN WELLYN 10
IF ~~ REPLY @513 DO ~SetGlobal("DLittle","GLOBAL",3) IncrementGlobal("SilverEvil","GLOBAL",1)~ EXTERN WELLYN 16
END

IF ~Dead("GRREVEN")
Global("DropBear","GLOBAL",1)~ THEN BEGIN DropBear
SAY @515
IF ~~ DO ~SetGlobal("DropBear","GLOBAL",2)
EraseJournalEntry(34337)
AddJournalEntry(@516,QUEST_DONE)~ EXIT 
END
END

EXTEND_BOTTOM WELLYN 14
IF ~IsValidForPartyDialog("D#Silver") Global("DLittle","GLOBAL",2)~ EXTERN D#Silver Keepbear
END
////////////////////////////////
APPEND D#SILVER
IF ~AreaCheck("AR0301")
Global("Maevar","LOCALS",1)~ THEN Hateit
SAY @151
IF ~~ DO ~SetGlobal("Maevar","LOCALS",2)~ EXIT
END
END

APPEND D#SILVER
IF ~AreaCheck("AR0307")
See("Booter") !Dead("Booter")
Global("Booter","LOCALS",1)~ THEN Hateit2
SAY @152
IF ~~ DO ~SetGlobal("Booter","LOCALS",2)~ EXIT
END
END
/////////////////////////////////
// Wallace in TradeMeet

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("D#Silver")
Global("geniesgone","GLOBAL",1)
Global("SilWallace","GLOBAL",1)~ THEN WALL1 GetPoison
@520 = @521 DO ~SetGlobal("SilWallace","GLOBAL",2)~
== D#SILVER @522 DO ~SetGlobal("SilverPoison","GLOBAL",1)~
== Wall1 @523 = @524 DO ~GiveItemCreate("MISCA2","D#Silver",0,0,0)~
== D#Silver @525
== Wall1 @526
EXIT
/////////////////////////////////
EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0)
Name("D#Silver",LastTalkedToBy)~ EXTERN TRGYP02 Gypsy
END

CHAIN trgyp02 Gypsy
@530 = @531
== D#SILVER @532 DO ~ActionOverride("D#Silver",RunAwayFrom("TRGYP02",60))~
EXIT

///////////////////////////////
I_C_T Delcia 2 bitch
== D#Silver @536
END

////////////////////////////////
I_C_T PPIRENI2 31 FINK
== PPIRENI2 IF ~IsValidForPartyDialog("D#Silver")~ THEN @540
== D#silver IF ~IsValidForPartyDialog("D#Silver")~ THEN @541
== PPIRENI2 IF ~IsValidForPartyDialog("D#Silver")~ THEN @542
== PPIRENI2 IF ~IsValidForPartyDialog("D#Silver")~ THEN @543
END
////////////////////////////////
EXTEND_BOTTOM UDDROW24 0
IF ~IsValidForPartyDialog("D#Silver") Global("DrowPoison","GLOBAL",0)~ EXTERN D#Silver DPoison
END

CHAIN D#Silver DPoison
@200 DO ~SetGlobal("DrowPoison","GLOBAL",1)~
== UDDROW24 @201
END UDDROW24 HEY

APPEND UDDROW24
IF ~~ HEY
SAY @202
IF ~~ REPLY @203 EXTERN D#Silver HitHead
END
END

CHAIN D#Silver HitHead
@204
== Viconij IF ~InParty("Viconia")~ THEN @205 = @206
== EDWINJ IF ~InParty("Edwin") !InParty("Viconia")~ THEN @205 = @206
== KORGANJ IF ~InParty("Korgan") !InParty("Viconia") !InParty("Edwin")~ THEN @205 = @206
== UDDROW24 @207
== D#Silver IF ~GlobalGT("SilverEvil","GLOBAL",5)~ THEN @208
== D#Silver IF ~GlobalLT("SilverEvil","GLOBAL",6)~ THEN @209
== EDWINJ IF ~InParty("Edwin") !Dead("Edwin")~ THEN @210
== D#Silver IF ~InParty("Edwin") !Dead("Edwin")~ THEN @211
EXIT
////////////////////////////////////////////////////
// tiana

EXTEND_BOTTOM tiana 4
IF ~IsValidForPartyDialog("D#Silver")~ EXTERN D#Silver SNITCH
END

APPEND D#SILVER
IF ~~ SNITCH
SAY @551
IF ~~ EXTERN TIANA 5
END
END

// Silver wants revenge against Irenicus

APPEND D#SILVER
IF ~GlobalGT("Chapter","GLOBAL",1)
Global("IrenTalk","LOCALS",1)
OR(2)
AreaCheck("AR0313")
AreaCheck("AR0509")~ SilRevenge
SAY @590
IF ~~ THEN REPLY @591 DO ~SetGlobal("IrenTalk","LOCALS",2)~ GOTO SilRev2a
IF ~~ THEN REPLY @592 DO ~SetGlobal("IrenTalk","LOCALS",2)~ GOTO SilRev2a
IF ~~ THEN REPLY @593 DO ~SetGlobal("IrenTalk","LOCALS",2)~ GOTO SilRev2a
IF ~~ THEN REPLY @594 DO ~SetGlobal("IrenTalk","LOCALS",2)~ GOTO SilRev14a
END

IF ~~ SilRev2a
SAY @595
IF ~~ THEN REPLY @596 GOTO SilRev3a
IF ~~ THEN REPLY @597 GOTO SilRev3a
IF ~~ THEN REPLY @598 GOTO SilRev4a
END

IF ~~ SilRev3a
SAY @599
IF ~~ THEN REPLY @600 GOTO SilRev5a
IF ~~ THEN REPLY @601 GOTO SilRev6a
IF ~~ THEN REPLY @602 GOTO SilRev4a
END

IF ~~ SilRev4a
SAY @603
IF ~~ THEN REPLY @604 GOTO SilRev7a
IF ~~ THEN REPLY @605 GOTO SilRev7a
IF ~~ THEN REPLY @606 GOTO SilRev6a
END

IF ~~ SilRev5a
SAY @607
IF ~~ THEN REPLY @608 GOTO SilRev8a
IF ~~ THEN REPLY @609 GOTO SilRev9a
IF ~~ THEN REPLY @610 GOTO SilRev7a
END

IF ~~ SilRev6a
SAY @611
IF ~~ THEN REPLY @612 GOTO SilRev8a
IF ~~ THEN REPLY @609 GOTO SilRev9a
IF ~~ THEN REPLY @613 GOTO SilRev7a
END

IF ~~ SilRev7a
SAY @614
IF ~~ THEN REPLY @615 GOTO SilRev10a
IF ~~ THEN REPLY @616 GOTO SilRev11a
IF ~~ THEN REPLY @617 GOTO SilRev12a
IF ~~ THEN REPLY @618 GOTO SilRev14a
END

IF ~~ SilRev8a
SAY @619
IF ~~ EXIT
END

IF ~~ SilRev9a
SAY @620
IF ~~ EXIT
END

IF ~~ SilRev10a
SAY @621
IF ~~ EXIT
END

IF ~~ SilRev11a
SAY @622
IF ~~ EXIT
END

IF ~~ SilRev12a
SAY @623
IF ~~ THEN REPLY @624 GOTO SilRev13a
IF ~~ THEN REPLY @625 GOTO SilRev13a
IF ~~ THEN REPLY @626 GOTO SilRev14a
END

IF ~~ SilRev14a
SAY @639
IF ~~ EXIT
END
END

CHAIN D#Silver SilRev13a
@627
== Keldorj IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN @628
== Valygarj IF ~InParty("Valygar") !Dead("Valygar")~ THEN @629
== Naliaj IF ~InParty("Nalia") !Dead("Nalia")~ THEN @630
== Mazzyj IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN @631
== Anomenj IF ~InParty("Anomen") !Dead("Anomen")~ THEN @632
== Aeriej IF ~InParty("Aerie") !Dead("Aerie")~ THEN @633
== Minscj IF ~InParty("Minsc") !Dead("Minsc")~ THEN @634
== Viconi IF ~InParty("Viconia") !Dead("Viconia")~ THEN @635
== Edwinj IF ~InParty("Edwin") !Dead("Edwin")~ THEN @636
== Korganj IF ~InParty("Korgan") !Dead("Korgan")~ THEN @637
== D#Silver @638
EXIT

