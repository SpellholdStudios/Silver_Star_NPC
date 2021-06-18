BEGIN D#SilvP

IF ~Global("SilverJoined","LOCALS",1)~ THEN BEGIN KickOut
  SAY @1
  IF ~~ THEN REPLY @2 DO ~JoinParty()~ EXIT
  IF ~~ THEN REPLY @3 GOTO Where
END

IF ~~ THEN BEGIN Where
  SAY @4
IF ~!AreaCheck("AR0601") // Irenicus' Dungeon
!AreaCheck("AR0602")
!AreaCheck("AR0603")
!AreaCheck("AR0410") // Slums
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512") // Asylum
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~
THEN REPLY @5 DO ~SetGlobal("SilverJoined","LOCALS",0)
EscapeAreaMove("AR0020",672,604,0)~ EXIT

IF ~!AreaCheck("AR0301") 
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")
!AreaCheck("AR1300")
!AreaCheck("AR1301")
!AreaCheck("AR1302")
!AreaCheck("AR1303")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!InWatchersKeep()~ THEN REPLY @6 DO ~SetGlobal("SilverJoined","LOCALS",0)~ EXIT
END

IF ~Global("SilverJoined","LOCALS",0)~ THEN BEGIN ARejoin
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("SilverJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @9 EXIT
END

IF ~HappinessLT(Myself,-290)~ THEN BEGIN Aunhappy
  SAY @10
  IF ~~ THEN DO ~LeaveParty() EscapeArea()
~ EXIT
END

BEGIN D#Si25P

IF ~Global("SilverJoined","LOCALS",1)~ TOBKickOut
  SAY @1
  IF ~~ REPLY @2 DO ~JoinParty()~ EXIT
  IF ~~ REPLY @3 GOTO TOBWhere
END

IF ~~ TOBWhere
  SAY @4
  IF ~~ REPLY @11 DO ~SetGlobal("SilverJoined","LOCALS",0)
    EscapeAreaMove("AR4500",1999,1218,0)~ EXIT
  IF ~~ REPLY @6 DO ~SetGlobal("SilverJoined","LOCALS",0)~ EXIT
END

IF ~Global("SilverJoined","LOCALS",0)~ THEN BEGIN TOBRejoin
  SAY @7
  IF ~~ THEN REPLY @8 DO ~SetGlobal("SilverJoined","LOCALS",1) JoinParty()~ EXIT
  IF ~~ THEN REPLY @9 EXIT
END

IF ~HappinessLT(Myself,-290)~ THEN BEGIN TOBunhappy
  SAY @10
  IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END