EXTEND_BOTTOM BOTSMITH 4

  IF ~PartyHasItem("cdax2h5")~ THEN GOTO PartyHasAxe

END

APPEND BOTSMITH

  IF ~~ THEN BEGIN PartyHasAxe SAY @6015 = @6016
    IF ~PartyGoldLT(5000)~ THEN REPLY #66606 GOTO 10
    IF ~PartyGoldGT(4999)~ THEN DO ~SetGlobal("cdax2h5","LOCALS",1)
                                    TakePartyItemNum("cdax2h5",1) // battle standard +4
                                    DestroyItem("cdax2h5")
                                    TakePartyGold(5000)
                                    DestroyGold(5000)~ REPLY #66649 GOTO 11
    IF ~~ THEN REPLY #66650 GOTO MovingRightAlong
  END
  
  IF ~~ THEN BEGIN MovingRightAlong SAY @6017
    COPY_TRANS BOTSMITH 4
  END

END