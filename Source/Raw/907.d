func void DIGGRAVE_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (WLD_ISTIME(20, 0, 5, 0)) {
            FADESCREENTOBLACKF(2, 0xbec6, 350);
        } else {
            DIGGRAVE_STOP();
        };
    };
}

instance DIGGRAVE_S1.HER(C_NPC)
func void DIGGRAVE_FADESCREEN() {
    if ((HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PARTM8_GRAVE_01")) || (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PARTM8_GRAVE_01_AFTER"))) {
        FF_APPLYONCEEXTGT(0xbec7, 0, -(1));
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PARTM8_GRAVE_02")) || (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PARTM8_PATH_108"))) {
        FF_APPLYONCEEXTGT(0xbecd, 0, -(1));
    };
    if (WLD_ISTIME(20, 0, 5, 0)) {
        WLD_SETTIME(3, 0);
    };
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
}

func void DIGGRAVE_MOVER_01() {
    if ((DIGGRAVE_COLLISION) == (0)) {
        PRINTD("Rozpoczynam - DIGGRAVE_MOVER_01");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_PARTM8_GRAVE_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("KM_PARTM8_GRAVE_01_AFTER");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("GRAVE_DIG_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("GRAVE_DIG_01_AFTER", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_PARTM8_GRAVE_01");
        WLD_SENDTRIGGER("KM_PARTM8_GRAVE_01_AFTER");
        DIGGRAVE_COLLISION = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - DIGGRAVE_MOVER_01");
        CHANGEVOBCOLLISION("GRAVE_DIG_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("GRAVE_DIG_01_AFTER", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xbec7);
        DIGGRAVE_COLLISION = 0;
    };
}

var int DIGGRAVE_MOVER_01.DIGGRAVE_COLLISION = 0;
instance DIGGRAVE_MOVER_01.MOVER1(ZCMOVER)
instance DIGGRAVE_MOVER_01.MOVER2(ZCMOVER)
var int DIGGRAVE_MOVER_01.MOVPTR1 = 0;
var int DIGGRAVE_MOVER_01.MOVPTR2 = 0;
func void DIGGRAVE_MOVER_02() {
    if ((DIGGRAVE_COLLISION) == (0)) {
        PRINTD("Rozpoczynam - DIGGRAVE_MOVER_02");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_PARTM8_GRAVE_02");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("KM_PARTM8_GRAVE_02_AFTER");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("GRAVE_DIG_02", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("GRAVE_DIG_02_AFTER", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_PARTM8_GRAVE_02");
        WLD_SENDTRIGGER("KM_PARTM8_GRAVE_02_AFTER");
        DIGGRAVE_COLLISION = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - DIGGRAVE_MOVER_02");
        CHANGEVOBCOLLISION("GRAVE_DIG_02", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("GRAVE_DIG_02_AFTER", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(0xbecd);
        DIGGRAVE_COLLISION = 0;
    };
}

var int DIGGRAVE_MOVER_02.DIGGRAVE_COLLISION = 0;
instance DIGGRAVE_MOVER_02.MOVER1(ZCMOVER)
instance DIGGRAVE_MOVER_02.MOVER2(ZCMOVER)
var int DIGGRAVE_MOVER_02.MOVPTR1 = 0;
var int DIGGRAVE_MOVER_02.MOVPTR2 = 0;
