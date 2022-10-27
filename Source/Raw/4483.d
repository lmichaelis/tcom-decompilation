func void EVT_SQ413_SCRIPT() {
    SQ413_CHESTREADY = TRUE;
    WLD_SENDTRIGGER("SQ413_MOVER_PLUNDER");
    MOB_CHANGEFOCUSNAME("SQ413_PLUNDER", "MOBNAME_NOTHING");
    WLD_INSERTITEM(0x9208, "FP_SQ413_POCKET");
    B_REMOVENPC(0xcdce);
    NPC_REMOVEINVITEMS(HERO, 0x9202, 1);
    AI_WAIT(HERO, 0x3fc00000);
    AI_FUNCTION(HERO, 0x167c7);
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    B_LOGENTRY(TOPIC_SQ413, LOG_SQ413_CHESTREADY);
}

func void SQ413_CHEST_MOVER() {
    WLD_SENDTRIGGER("SQ413_CHEST");
}

func void EVT_SQ413_CORPSE() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((NPC_ISDEAD(MIL_13312_GUARD)) == (FALSE)) {
            if (((NPC_GETDISTTONPC(HERO, MIL_13312_GUARD)) <= (400)) && ((NPC_ISINSTATE(MIL_13312_GUARD, 0xf0a3)) == (FALSE))) {
                PRINTD("Guard 01 atakuje!");
                B_IMMEDIATEATTACKPLAYER(MIL_13312_GUARD, AR_THEFT);
                B_ADDPETZCRIME(MIL_13312_GUARD, CRIME_THEFT);
                NPC_REFRESH(MIL_13312_GUARD);
                AI_TURNTONPC(MIL_13312_GUARD, HERO);
            };
        };
        if ((NPC_ISDEAD(MIL_13311_GUARD)) == (FALSE)) {
            if (((NPC_GETDISTTONPC(HERO, MIL_13311_GUARD)) <= (400)) && ((NPC_ISINSTATE(MIL_13311_GUARD, 0xf0a3)) == (FALSE))) {
                PRINTD("Guard 02 atakuje!");
                B_IMMEDIATEATTACKPLAYER(MIL_13311_GUARD, AR_THEFT);
                B_ADDPETZCRIME(MIL_13311_GUARD, CRIME_THEFT);
                NPC_REFRESH(MIL_13311_GUARD);
                AI_TURNTONPC(MIL_13311_GUARD, HERO);
            };
        };
    };
}

instance EVT_SQ413_CORPSE.HER(C_NPC)
