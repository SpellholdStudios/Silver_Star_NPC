/*
Sword State
0 no sword
1 speak with the doppleganger
2 has Cry Blade
3 Group stole sword & she's leaving
*/

// insert sword dialogue
EXTEND_BOTTOM SHAPE 1
  IF ~InParty("D#Silver")
      Global("D#SilverSword","GLOBAL",0)~ THEN
  DO ~SetGlobal("D#SilverSword","GLOBAL",1)~ EXTERN D#Silver Pres1
END

EXTEND_BOTTOM SHAPE 2
  IF ~InParty("D#Silver")
      Global("D#SilverSword","GLOBAL",0)~ THEN
  DO ~SetGlobal("D#SilverSword","GLOBAL",1)~ EXTERN D#Silver Pres2
END

EXTEND_BOTTOM SHAPE 5
  IF ~InParty("D#Silver")
      Global("D#SilverSword","GLOBAL",0)~ THEN
  DO ~SetGlobal("D#SilverSword","GLOBAL",1)~ EXTERN D#Silver Pres5
END

// sword dialogue
APPEND D#Silver
  IF ~~ THEN BEGIN Pres1
    SAY @1
    IF ~~ THEN EXTERN SHAPE Shape1
  END

  IF ~~ THEN BEGIN Pres2
    SAY @1
    IF ~~ THEN EXTERN SHAPE Shape2
  END

  IF ~~ THEN BEGIN Pres5
    SAY @1
    IF ~~ THEN EXTERN SHAPE Shape5
  END
END

// shape reply
APPEND SHAPE
  IF ~~ THEN BEGIN Shape1
    SAY @2
    COPY_TRANS SHAPE 1
  END

  IF ~~ THEN BEGIN Shape2
    SAY @2
    COPY_TRANS SHAPE 2
  END

  IF ~~ THEN BEGIN Shape5
    SAY @2
    COPY_TRANS SHAPE 5
  END
END

APPEND D#Silver
IF ~Global("D#SilverSword","GLOBAL",1)
   !HasItem("D#Crybl1","D#Silver")
   PartyHasItem("D#crybl1")~ THEN BEGIN Havemysword
  SAY @3
  IF ~~ THEN DO ~SetGlobal("D#SilverSword","GLOBAL",2) GiveItem("D#Crybl1","D#Silver")~ EXIT
END

IF ~Global("D#SilverSword","GLOBAL",1)
   HasItem("D#Crybl1","D#Silver")~ THEN BEGIN Havemysword2
  SAY @3
  IF ~~ THEN DO ~SetGlobal("D#SilverSword","GLOBAL",2)~ EXIT
END

IF ~!HasItem("D#Crybl1","D#Silver")
    Global("D#SilverSword","GLOBAL",2)~ THEN BEGIN Gimmesword
  SAY @4
  IF ~~ THEN DO ~RealSetGlobalTimer("Swordtime","LOCALS",600)
                 SetGlobal("D#SilverSword","GLOBAL",3)~ EXIT
END

IF ~Global("D#SilverSword","GLOBAL",3)
    RealGlobalTimerExpired("Swordtime","LOCALS")~ THEN BEGIN nosword
  SAY @5
  IF ~~ THEN DO ~TakePartyItem("D#Crybl1")
                 EscapeArea()~ EXIT
END
END

BEGIN D#Crybl1

IF ~True()~ SSSword1
  SAY ~Dear Silver what can I do for you?~
  IF ~~ REPLY ~Nothing Mommy, I want only be sure that you are all right.~ GOTO SSSword2 
END

CHAIN D#Crybl1 SSSword2 
  ~Yes my dear.~
  == D#Silver ~Then good bye Mommy.~
  == D#Crybl1 ~See you Silver.~
EXIT
