// Silver Star encounter speech - Banshee dialogue

APPEND D#Silver
IF WEIGHT #0 ~Global("Silvermorph","GLOBAL",10)~ Meet0
  SAY @1 
  IF ~~ DO ~SetGlobal("Silvermorph","GLOBAL",11)~ EXIT
END
END


BEGIN D#Sbansh
IF ~Global("Silvermorph","GLOBAL",12)~ Meet00
  SAY @2
  IF ~~ DO ~SetGlobal("Silvermorph","GLOBAL",13)~ GOTO Meet1
END

IF ~~ Meet1
  SAY @3
  IF ~~ GOTO Meet2
END

IF ~~ Meet2
  SAY @4
  IF ~InParty("Edwin")~ THEN REPLY @5 GOTO Meet2b
END

IF ~~ Meet2b
  SAY @6 = @7 = @8
  IF ~~ GOTO Meet3
END

IF ~~ Meet3
  SAY @9
  IF ~~ EXIT
END


BEGIN D#SbansP

IF ~HappinessLT(Myself,-290)~ Bunhappy
  SAY @11
  IF ~~ EXIT
END

IF ~Global("Banshee1","LOCALS",0)~ BKickOut
  SAY @10
  IF ~~ DO ~JoinParty()~ EXIT
END
