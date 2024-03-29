func void DIGGRAVE_STOP() {
    HERO.AIVAR[4] = FALSE;
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    AI_OUTPUT(HERO, HERO, "DIA_MARVIN_DIGGRAVE_15_01");
}

func void DIGGRAVEQ309_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (((WLD_ISTIME(20, 0, 5, 0)) && ((Q309_DIGNORMANGRACE) == (0))) || ((Q309_DIGNORMANGRACE) == (2))) {
            FADESCREENTOBLACKF(1, 48829, 1000);
        } else {
            DIGGRAVE_STOP();
        };
    };
}

func void DIGNORMANGRAVE_FADESCREEN() {
    FF_APPLYONCEEXTGT(48830, 0, -(1));
    if (WLD_ISTIME(20, 0, 5, 0)) {
        WLD_SETTIME(3, 0);
    };
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
}

func void Q309_NORMANGRAVE_DIG_MOVER() {
    var ZCMOVER MOVER2;
    var int MOVPTR2;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int CHANGEGRAVENORMANDIGCOLLISION;
    if ((CHANGEGRAVENORMANDIGCOLLISION) == (0)) {
        PRINTD("Rozpoczynam - ChangeGraveNormanDigCollision");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_GRAVE_DIG_NORMAN");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("KM_GRAVE_DIG_DIRT");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("KM_NORMAN_GRAVE_DIRT", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KM_NORMAN_GRAVE_BODY_AFTER", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_GRAVE_DIG_NORMAN");
        WLD_SENDTRIGGER("KM_GRAVE_DIG_DIRT");
        CHANGEGRAVENORMANDIGCOLLISION = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - ChangeGraveNormanDigCollision");
        CHANGEVOBCOLLISION("KM_NORMAN_GRAVE_DIRT", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KM_NORMAN_GRAVE_BODY_AFTER", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(48830);
        CHANGEGRAVENORMANDIGCOLLISION = 0;
        Q309_DIGNORMANGRACE = 2;
        MOB_CHANGEFOCUSNAME("KM_NORMAN_GRAVE_BODY_AFTER", "MOBNAME_DIG_IN");
    };
}

