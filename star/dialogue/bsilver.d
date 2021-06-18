BEGIN BSilver

// SS & Yoshimo - from Dancer Fitz

CHAIN IF ~GlobalTimerExpired("ImSoPretty","GLOBAL")
Global("SilverYoshi","LOCALS",0)
InParty("Yoshimo")
See("Yoshimo") !Dead("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)~ THEN BSilver Yoshi1
@253 DO ~SetGlobal("SilverYoshi","LOCALS",1)~
== BYOSHIM @254
== BSilver @255
== BYOSHIM @256
== BSilver @257
== BYOSHIM @258
== BSilver @259
== BYOSHIM @260
== BSilver @261
== BYOSHIM @262
EXIT
/////////////////////
// SS & Imoen

CHAIN IF ~Global("D#SawKhalid","LOCALS",1)
Global("SilverImoen1","GLOBAL",0)
InParty("Imoen")
See("Imoen") !Dead("Imoen")
!StateCheck("Imoen",STATE_SLEEPING)~ THEN D#Silver torture1
@106 DO ~SetGlobal("SilverImoen1","GLOBAL",1)~
== Imoenj @107
== BSilver @108 DO ~SetGlobal("D#SawKhald","LOCALS",2)~
== Imoenj @109
== BSilver @110
== Imoenj @111
EXIT

// SS & Nalia - from Dancer Fitz
 
CHAIN IF WEIGHT #0 ~Global("NaliaKeepPlot","GLOBAL",1)
See("Nalia") InParty("Nalia")
!Dead("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("DNaliaTalk","LOCALS",1)
OR(2)
AreaCheck("AR0400")
AreaCheck("AR0300")~ THEN BSilver Nalia1
@290
== BNALIA @291
== BSilver @292 
== BNALIA @293
== BSilver @294
== BNALIA @295
== BSilver @296
== BNALIA @297
== BSilver @298
== BNALIA @299
== BSilver @300
== BNALIA @301
== BSilver @302
== BNALIA @303
== BSilver @304 DO ~SetGlobal("DNaliaTalk","LOCALS",2)~
EXIT

/////////////////////
// SS & Korgan Tlk 1

APPEND BKORGAN
IF WEIGHT #-30 ~Global("Silkorg","GLOBAL",0)
InParty("D#Silver")
See("D#Silver") !Dead("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)
Global("SilBattle","GLOBAL",1)~ THEN SilKorgan1
SAY @216
IF ~~ DO ~SetGlobal("Silkorg","GLOBAL",1)~ EXTERN BSilver SilKorgan2
END
END

CHAIN BSilver SilKorgan2
@217
== BKorgan @218
== BSilver @219
== BKorgan @220
EXIT

///////////////////
// SS & Edwina

I_C_T EDWINJ 170 siledwina1
== BSilver IF ~InParty("D#Silver") !Dead("D#Silver")~ THEN @244
END

EXTEND_BOTTOM Edwinj 173
IF ~IsValidForPartyDialog("D#Silver")
Global("SilverEdwina","GLOBAL",0)~ EXTERN BSilver friends1
END

EXTEND_BOTTOM Edwinj 180
IF ~IsValidForPartyDialog("D#Silver")
Global("SilverEdwina","GLOBAL",0)~ EXTERN BSilver friends1
END

CHAIN BSILVER friends1
@17 DO ~SetGlobal("SilverEdwina","GLOBAL",1)~
== BEDWIN @18
== BSilver @19
== BEDWIN @20
== BSilver @21
EXIT

///////////////////////////////
// SS & Edwina talk about Sex

CHAIN IF ~Global("SilverEdwina","GLOBAL",2)
    InParty("Edwin") !Dead("Edwin")
    Gender("Edwin",FEMALE)
    !StateCheck("Edwin",STATE_SLEEPING)~ THEN BSilver sexy
@30
== BEDWIN @31
== BSilver @32
== BEdwin @33
== BSilver @34
== Bedwin @35
== BSilver @36
== Bviconi IF ~InParty("Viconia") !Dead("Viconia")~ THEN @37
== Bedwin @38
== BSilver @102
== Bedwin @103 = @204 = @205 = @206 = @207 = @39 = @40
== BSilver @41
== Bedwin @42
== Bminsc IF ~InParty("Minsc") !Dead("Minsc")~ THEN @59
== Bedwin IF ~InParty("Minsc") !Dead("Minsc")~ THEN @60
== BSilver @43 DO ~SetGlobal("SilverEdwina","GLOBAL",3)~
EXIT

/////////////////////////////////////////////////
// SS & Mazzy

CHAIN IF ~Global("SilverMazzy2","GLOBAL",1)
See("Mazzy") !Dead("Mazzy")
See("Aerie") !Dead("Aerie")~ THEN BSilver HurtAerie
@189
== BSilver @190
== BMazzy @191
== BSilver @192 DO ~SetGlobal("SilverMazzy2","GLOBAL",2)~
EXIT
////////////////////////////////////////////////
// SS & Edwin Society tlk

CHAIN IF ~Global("SilverEdwin1","GLOBAL",0)
    InParty("Edwin") See("Edwin") !Dead("Edwin")
    Gender("Edwin",MALE)
    !StateCheck("Edwin",STATE_SLEEPING)~ THEN BSilver Society
@11
== BEDWIN @12
== BSilver @13 = @14
== BEDWIN @15
== BSilver @16 DO ~SetGlobal("SilverEdwin1","GLOBAL",1)~
EXIT
/////////////////////////////////////////////////////////////
// SS & Aerie Talk 1

CHAIN IF ~Global("SilverAerie1","GLOBAL",0)
See("Aerie") InParty("Aerie") !Dead("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)~ THEN BSilver 1Aerie1
@153
== Baerie @154
== BSilver @155
== Baerie @156
== BSilver @157
== Baerie @158
== BSilver @159 DO ~SetGlobal("SilverAerie1","GLOBAL",1)~
EXIT
/////////////////////////////////////////////////////////////
// SS & Anomen

APPEND Banomen
IF WEIGHT #-1 ~Global("Silveranom","GLOBAL",0)
See("D#Silver") !Dead("D#Silver")
InParty("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)~ THEN justice
SAY @160
  IF ~~ DO ~SetGlobal("Silveranom","GLOBAL",1)~ EXTERN BSilver silverjust1
END
END

CHAIN BSILVER silverjust1
@161
== Banomen @162
== BSilver @163
== Banomen @164
== BSilver @165
== Banomen @166
== BSilver @167
== Banomen @168
== BSilver @169
== Banomen @170
== BSilver @171
EXIT

//////////////////////////////////////
// SS & Viconia - Drow Tlk 1

I_C_T BVICONI 1 silverdrow
== BSilver IF ~InParty("D#Silver") !Dead("D#Silver")~ THEN @9 = @10
END
/////////////////////////////////////
// SS & Viconia - Drow Tlk 2

CHAIN IF ~Global("SilverViconia1","GLOBAL",0)
See("Viconia") !Dead("Viconia")~ THEN BSilver drow2
@44
== BVICONI @45
== BSilver @46
== BVICONI @47
== BSilver @48 DO ~SetGlobal("SilverViconia1","GLOBAL",1)~
EXIT
///////////////////////////////////
// Silver & Mazzy

CHAIN IF ~Global("SilverMazzy2","GLOBAL",2)
See("Mazzy") !Dead("Mazzy")~ THEN BSilver MazzyLamb
@193
== Bmazzy @194
== BSilver @195 DO ~SetGlobal("SilverMazzy2","GLOBAL",3)~
EXIT
////////////////////////////////////
// SS & Viconia - Drow Tlk 3

CHAIN IF ~Global("SilverViconia1","GLOBAL",1)
See("Viconia") !Dead("Viconia")~ THEN BSilver drow3
@50
== BVICONI @51
== BSilver @52
== BVICONI @53
== BSilver @54
== BVICONI @55
== BSilver @56
== BVICONI @57
== BSilver @58 DO ~SetGlobal("SilverViconia1","GLOBAL",2)~
EXIT

//////////////////////////////////
// SS & Viconia - make fun of

EXTEND_BOTTOM BVICONI 393
IF ~IsValidForPartyDialog("D#Silver")~ EXTERN BSilver TwitViccy
END

CHAIN BSilver TwitViccy
@486 = @488 = @490
== BViconi @493
EXIT
/////////////////////////////////
// SS & Viconia - Drow tlk 4

APPEND BVICONI 
IF WEIGHT #-1 ~Global("SilverViconia1","GLOBAL",2)
See("D#Silver") !Dead("D#Silver")
InParty("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)~ THEN drow4
SAY @125
IF ~~ DO ~SetGlobal("SilverViconia1","GLOBAL",3)~ EXTERN BSILVER drow4a
END
END

CHAIN BSilver drow4a
@126
== Bviconi @127
== BSilver @128
== Bviconi @129
EXIT
/////////////////////////////////
// SS & Viconia - Drow tlk 5

CHAIN IF ~Global("SilverViconia1","GLOBAL",3)
See("Viconia") !Dead("Viconia")~ THEN BSilver drow5
@176
== BVICONI @177 
== BSilver @178
== BVICONI @179
== BSilver @180
== BVICONI @181 DO ~SetGlobal("SilverViconia1","GLOBAL",4)~
EXIT

//////////////////////////////
// SS & Edwin Sun talk

CHAIN IF ~Global("SilverEdwin1","GLOBAL",1)
See("Edwin") !Dead("Edwin")~ THEN BSilver Suntalk
@1
== BEDWIN @2 = @3
== BSilver @4
== BEDWIN @5
== BSilver @6
== BEDWIN @7
== BSilver @8 DO ~SetGlobal("SilverEdwin1","GLOBAL",2)~
EXIT
/////////////////////////////////
// SS & Jan - Talk 1

CHAIN IF WEIGHT #-1 ~Global("Silverjan1","GLOBAL",0)
See("Jan") !Dead("Jan")
InParty("Jan")
!StateCheck("Jan",STATE_SLEEPING)~ THEN BSilver Jjan1
@72
== BJan @73 = @74
== BSilver @75 = @76 DO ~SetGlobal("Silverjan1","GLOBAL",1)~
== BSilver IF ~InParty("Edwin")~ THEN @77
== BEdwin IF ~InParty("Edwin")~ THEN @78
EXIT

// SS & Jaheira - Khalid's corpse

I_C_T JAHEIRAJ 338 silverkalid
== BSilver IF ~IsValidForPartyDialog("D#Silver")~ THEN @49
END

// Silver is rude

APPEND Bjaheir
IF WEIGHT #-1 ~GlobalGT("SilverEvil","GLOBAL",3)
See("D#Silver") !Dead("D#Silver")
InParty("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)
Global("Silverjhae1","GLOBAL",0)~ jsilver1
SAY @22 = @23
IF ~~ DO ~SetGlobal("Silverjhae1","GLOBAL",1)~ EXTERN BSilver jsilver2
END

IF ~~ jsilver3
SAY @29
IF ~~ REPLY @61 EXTERN BSilver jjsilver
IF ~~ REPLY @62 DO ~DisplayStringHead("D#Silver",@494) IncrementGlobal("SilverEvil","GLOBAL",1) Wait(2)~ EXIT
END
END

CHAIN BSilver jsilver2
@24
== BJAHEIR @25
== BSilver @26
== BSilver IF ~InParty("Edwin") !Dead("Edwin")~ THEN @27
== Bedwin IF ~InParty("Edwin") !Dead("Edwin")~ THEN @28
END Bjaheir jsilver3

APPEND BSilver
IF ~~ jjsilver
  SAY @63
  IF ~~ EXIT
END
END
/////////////////////////////////////////
// SS & Aerie Tlk 2-she frightens Aerie

CHAIN IF ~Global("SilverAerie1","GLOBAL",1)
See("Aerie") !Dead("Aerie")
InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)~ THEN BSilver AAerie1
@64
== Baerie @79 = @80
== BSilver @65
== Baerie @66 = @67
== BSilver @68 = @69
== Baerie @70
== BSilver @71
== BAerie @81 
== BSilver @82
== BAerie @83 DO ~SetGlobal("SilverAerie1","GLOBAL",2)~
EXIT

////////////////////////
// SS & Aerie - Tlk 3

CHAIN IF ~Global("SilverAerie1","GLOBAL",2)
See("Aerie") !Dead("Aerie")~ THEN BSilver AAerie5
@112
== Baerie @113
== BSilver @114
== Baerie @115
== BSilver @116
== Baerie @117
== BSilver @118
== Baerie @119
== BSilver @120
== Baerie @121
== BSilver @122
== Baerie @123
== BSilver @124 DO ~SetGlobal("SilverAerie1","GLOBAL",3)~
EXIT

////////////////////////////
// SS & Aerie - make fun of

I_C_T BAERIE 136 Kissing
== Bsilver @485 = @488 = @489
== BAerie @492
END

I_C_T BAERIE 137 Kissing
== Bsilver @485 = @488 = @489
== BAerie @492
END

////////////////////////
// SS & Haerdalis

APPEND Bhaerda
IF WEIGHT #-1 ~InParty("D#Silver")
See("D#Silver") !Dead("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)
Global("SilHaerFight","GLOBAL",0)~ Shaerd1
SAY @92
IF ~~ THEN DO ~SetGlobal("SilHaerFight","GLOBAL",1)~ EXTERN BSilver Shaerd2
END

IF ~~ Shaerd3
SAY @98 = @99
IF ~~ REPLY @101 DO ~DisplayStringHead("D#Silver",@495)~ EXIT
IF ~~ REPLY @100 DO ~IncrementGlobal("SilverEvil","GLOBAL",1)
LeaveParty()
ActionOverride("D#Silver",LeaveParty())
Attack("D#Silver")
ActionOverride("D#Silver",Attack("Haerdalis"))~ EXIT
END
END

CHAIN BSilver Shaerd2
@93
== Bhaerda @94
== BSilver @95
== Bhaerda @96
== BSilver @97
END Bhaerda Shaerd3

/////////////////////
// SS & Jaheira

APPEND Bjaheir
IF WEIGHT #-1 ~Global("Jaheirainquire","GLOBAL",1)
See("D#Silver") !Dead("D#Silver")
InParty("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)
Global("Silverjhae2","GLOBAL",0)~ THEN silver11
SAY @208
IF ~~ DO ~SetGlobal("Silverjhae2","GLOBAL",1)~ EXTERN BSilver silver12
END
END

CHAIN BSilver silver12
@209
== BJAHEIR @210
== BSilver @211
== BJAHEIR @212
== BSilver @213
== BJAHEIR @214
== BSilver @215
EXIT

/////////////////////
// SS & Edwin

EXTEND_BOTTOM Edwinj 22
IF ~IsValidForPartyDialog("D#Silver")~ EXTERN BSilver Magicstudy
END

CHAIN BSilver Magicstudy
@84
== edwinj @85
== BSilver @86 = @87
== edwinj @88
== BSilver @89
== edwinj @90
== BSilver @91
EXIT

/////////////////
// SS & Valygar

CHAIN IF ~Global("Silvervalyga1","GLOBAL",0)
See("Valygar") !Dead("Valygar")
InParty("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)~ THEN BSilver Valychild1
@130
== Bvalyga @131
== BSilver @132 = @247 = @133 = @248 = @134 = @249 = @250 = @135
== Bvalyga @136
== BSilver @137
== Bvalyga @138
== BSilver @139 DO ~SetGlobal("Silvervalyga1","GLOBAL",1)~
== BSilver IF ~InParty("Aerie")~ THEN @140
EXIT

/////////////////////
// SS & Jan - talk 2

CHAIN IF ~Global("Silverjan1","GLOBAL",1)
See("Jan") !Dead("Jan")
InParty("Jan")
!StateCheck("Jan",STATE_SLEEPING)~ THEN BSilver Jjan21
@221
== BJAN @222
== BSilver @223
== BJAN @224 = @225
== BSilver @226
== BJAN @227
== BSilver @228
== BJAN @229
== BSilver @230
== BJAN @231 DO ~SetGlobal("Silverjan1","GLOBAL",2)~
EXIT

////////////////////
// SS & Mazzy

APPEND BMAZZY
IF WEIGHT #-1 ~Global("Silvermazzy1","GLOBAL",0)
GlobalLT("SilverEvil","GLOBAL",7) // Silver is not too evil
See("D#Silver") !Dead("D#Silver")
InParty("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)~ THEN Dungeontlk
SAY @182
IF ~~ DO ~SetGlobal("Silvermazzy1","GLOBAL",1)~ EXTERN BSilver DgnTlk2
END
END

CHAIN BSilver DgnTlk2
@183
== Bmazzy @184
== BSilver @185 = @186
== Bmazzy @187 = @188
EXIT

//////////////////
// SS & Edwin

APPEND Bedwin
IF WEIGHT #-1 ~Global("SilverEdwin1","GLOBAL",3)
See("Edwin") !Dead("Edwin")
InParty("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",STATE_SLEEPING)~ THEN Rose1
SAY @141
IF ~~ DO ~SetGlobal("SilverEdwin1","GLOBAL",4)~ EXTERN BSilver Rose2
END
END

CHAIN BSilver Rose2
@142
== Bedwin @143
== BSilver @144
== Bedwin @145
== BSilver @146
== Bedwin @147
== BSilver @150
== Bedwin @151
== BSilver @152
== Bedwin @245
== BSilver @246
EXIT

/////////////////////
// SS & Aerie

APPEND Baerie
IF WEIGHT #-1 ~Global("SilverAerie1","GLOBAL",3)
See("D#Silver") !Dead("D#Silver")
InParty("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)~ THEN AAerie10
SAY @196
IF ~~ DO ~SetGlobal("SilverAerie1","GLOBAL",4)~ EXTERN BSilver AAerie11
END
END

CHAIN BSilver AAerie11
@197 = @198 = @199
== Baerie @200
== BSilver @201
== Baerie @202
== BSilver @203
EXIT
/////////////////////
// SS & Jan - Talk 3

APPEND BSilver
IF ~Global("Silverjan1","GLOBAL",2)
See("Jan") !Dead("Jan")
InParty("Jan")
!StateCheck("Jan",STATE_SLEEPING)~ THEN Jjan22
  SAY @267
  IF ~~ REPLY @232 EXTERN BJAN Jjan23
  IF ~~ REPLY @233 EXTERN BJAN Jjan23
  IF ~~ REPLY @234 EXTERN BJAN Jjan23
END
END

CHAIN BJAN Jjan23
@235
== BSilver @236
== BJAN @237
== BSilver @238
== BJAN @239
== BSilver @240
== BJAN @241
== BSilver @242
== BJAN @243 DO ~SetGlobal("Silverjan1","GLOBAL",3)~
EXIT

APPEND BVICONI
IF WEIGHT #-1 ~InParty("D#Silver")
See("D#Silver")
HPLT("D#Silver",30)
Global("D#SilverBelow25","GLOBAL",0)~ THEN Silverhurt
SAY @104
IF ~~ THEN DO ~SetGlobal("D#SilverBelow25","GLOBAL",1)~ EXTERN BSilver SilverHurt2
END
END

CHAIN BSilver SilverHurt2
@105
EXIT

// Miscellaneous Comments on the world as seen by SS - courtesy of Seifer forum

CHAIN IF ~Global("RadientHeart","LOCALS",0)
AreaCheck("AR0903")
InParty("D#Silver") !Dead("D#Silver")~ THEN BSilver TOOSHINY
@266 DO ~SetGlobal("RadientHeart","LOCALS",1)~ EXIT

/////////////////////////
// SS & Jaheira 2nd Talk

APPEND Bjaheir
IF WEIGHT #-1 ~Global("Silverjhae2","GLOBAL",1)
See("D#Silver") !Dead("D#Silver")
InParty("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)~ THEN silver11a
SAY @455
IF ~~ DO ~SetGlobal("Silverjhae2","GLOBAL",2)~ EXTERN BSilver silver12a
END
END

CHAIN BSilver silver12a
@456
== BJAHEIR @457
== BSilver @458
== BJAHEIR @459 = @460
== BSilver @461
== BJAHEIR @462
== BSilver @463
== BJAHEIR @464
== BSilver @465
EXIT
///////////////////////////////
// SS & Mazzy - Followup Talk

APPEND BMAZZY                         
IF WEIGHT #-1 ~Global("Silvermazzy1","GLOBAL",1)
See("D#Silver") !Dead("D#Silver")
InParty("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)~ THEN Dgntlka
SAY @470 = @471
IF ~~ DO ~SetGlobal("Silvermazzy1","GLOBAL",2)~ EXTERN BSilver DgnTlkb
END
END

CHAIN BSilver DgnTlkb
@472
== Bmazzy @473
== BSilver @474
== Bmazzy @475
== BSilver @476
== Bmazzy @477
== BSilver @478
== Bmazzy @479
== BSilver @480
== Bmazzy @481
== BSilver @482
EXIT
/////////////////////////////
// SS & Korgan long Banter
//////////////////////////////

APPEND BKORGAN
IF WEIGHT #-1 ~See("D#Silver")
InParty("D#Silver")!Dead("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)
Global("Silkorg","GLOBAL",2)
OR(6)
AreaCheck("AR0406")
AreaCheck("AR0509")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ THEN SilKor1a
SAY @400
IF ~~ DO ~SetGlobal("Silkorg","GLOBAL",3)~ EXTERN BSilver SilKor2a
END

IF ~~ Silkor3
SAY @420
IF ~~ REPLY @429 EXTERN BKORGAN KorShovitA
IF ~~ REPLY @431 EXTERN BKORGAN KorShovitB
END
END

CHAIN BSilver SilKor2a
@401
== BKorgan @402
== BSilver @403
== BKorgan @404
== BSilver @405
== BKorgan @406
== BSilver @407 = @408
== BKorgan @409
END BKORGAN Silkor3

CHAIN BKORGAN KorShovitA
@432
== BJAHEIR IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN @430
== BAERIE IF ~InParty("Aerie") !Dead("Aerie")~ THEN @435
== BNALIA IF ~InParty("Nalia") !Dead("Nalia")~ THEN @439
== BANOMEN IF ~InParty("Anomen") !Dead("Anomen")~ THEN @438
== BVALYGA IF ~InParty("Valygar") !Dead("Valygar")~ THEN @437
== BKELDOR IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN @440
== BMAZZY IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN @441
== BKORGAN @433 DO ~ActionOverride("Korgan",MoveToOffset([5.5])) ActionOverride("D#Silver",MoveToObject("Korgan"))~
EXIT

CHAIN BKORGAN KorShovitB
@434
== BEDWIN IF ~InParty("Edwin") !Dead("Edwin")~ THEN @436
== BVICONI IF ~!InParty("Edwin") InParty("Viconia") !Dead("Viconia")~ THEN @436
== BYOSHIM IF ~InParty("Yoshimo") !Dead("Yoshimo")~ THEN @444
== BMINSC IF ~InParty("Minsc") !Dead("Minsc")~ THEN @442
== BSILVER @421 = @422
== BKORGAN @423
== BSILVER @424 = @425
== BKORGAN @426
== BSILVER @427
== BKORGAN @428
== BMINSC @443
EXIT

APPEND BKORGAN
IF WEIGHT #-1 ~See("D#Silver")
InParty("D#Silver")!Dead("D#Silver")
!StateCheck("D#Silver",STATE_SLEEPING)
Global("KorBanshee","LOCALS",1)
GlobalGT("SilverEvil","GLOBAL",7)~ THEN Korcomment
SAY @500
IF ~~ DO ~SetGlobal("KorBanshee","LOCALS",2)~ EXIT
END
END
