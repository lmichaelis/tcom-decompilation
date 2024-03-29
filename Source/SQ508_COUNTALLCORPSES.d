func void SQ508_COUNTALLCORPSES() {
    SQ508_COUNTCORPSE = (SQ508_COUNTCORPSE) + (1);
    PRINTD(CS2("Zbadane cia�a: ", INTTOSTRING(SQ508_COUNTCORPSE)));
    if ((SQ508_COUNTCORPSE) == (3)) {
        B_LOGENTRY(TOPIC_SQ508, LOG_SQ508_CHECKEDCORPSES);
        SQ508_ALLCORPSESDONE = TRUE;
    };
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
}

func void EVT_SQ508_GOBBOCORPSE() {
    var int SQ508_CHECKEDGOBBO;
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((SQ508_CHECKEDGOBBO) == (FALSE)) {
            SQ508_CHECKEDGOBBO = TRUE;
            MOB_CHANGEFOCUSNAME("SQ508_GOBBOCORPSE", "MOBNAME_NOTHING");
            AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ508_CHECKCORPSE_15_01");
            SQ508_COUNTALLCORPSES();
        };
    };
}

func void EVT_SQ508_WOLFCORPSE() {
    var int SQ508_CHECKEDWOLF;
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((SQ508_CHECKEDWOLF) == (FALSE)) {
            SQ508_CHECKEDWOLF = TRUE;
            MOB_CHANGEFOCUSNAME("SQ508_WOLFCORPSE", "MOBNAME_NOTHING");
            AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ508_CHECKCORPSE_15_02");
            SQ508_COUNTALLCORPSES();
        };
    };
}

func void EVT_SQ508_LURKERCORPSE() {
    var int SQ508_CHECKEDLURKER;
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((SQ508_CHECKEDLURKER) == (FALSE)) {
            SQ508_CHECKEDLURKER = TRUE;
            MOB_CHANGEFOCUSNAME("SQ508_LURKERCORPSE", "MOBNAME_NOTHING");
            AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ508_CHECKCORPSE_15_03");
            SQ508_COUNTALLCORPSES();
        };
    };
}

func void EVT_SQ508_TRIGGERCUTSCENE() {
    if ((SQ508_JUDGMENT) == (1)) {
        if (((NPC_ISINSTATE(PAL_100_CANDAC, 61599)) == (FALSE)) && ((NPC_ISINSTATE(PAL_100_CANDAC, 61615)) == (FALSE))) {
            SQ508_JUDGMENT = 2;
            SQ508_JUDGMENTCUTSCENE_PREPARE();
        };
    };
}

func void EVT_SQ508_KICKDOOR() {
    WLD_PLAYEFFECT("FX_DUST", HERO, HERO, 0, 0, 0, FALSE);
    SND_PLAY("ROCKS_KICK_01");
    SND_PLAY("PLACEHOLDER_SlamDoor01");
    SND_PLAY("DESTROY_WOOD");
    WLD_SENDTRIGGER("SQ508_BROKENDOOR_01");
    WLD_SENDTRIGGER("SQ508_BROKENDOOR_02");
    WLD_SENDTRIGGER("SQ508_BROKENDOOR_03");
}

