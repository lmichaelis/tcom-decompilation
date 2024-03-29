var int GRAVEJORN_01_USED;
var int GRAVEJORN_02_USED;
var int GRAVEJORN_03_USED;
var int GRAVEJORN_04_USED;
var int GRAVEJORN_ISINUSE;
const int GRAVEJORN_USED = 1;
func void GRAVEJORN_REWARD() {
    Q405_GRAVESCOUNT = (Q405_GRAVESCOUNT) + (1);
    PRINTD(CS2("Otwarte groby: ", INTTOSTRING(Q405_GRAVESCOUNT)));
    if ((Q405_GRAVESCOUNT) == (2)) {
        AI_OUTPUT(HERO, HERO, "DIA_Marvin_JornGrave_15_00");
        MOB_CHANGEFOCUSNAME("KM_JORNHOUSE_GRAVE_02", "MOBNAME_NOTHING");
        MOB_CHANGEFOCUSNAME("KM_JORNHOUSE_GRAVE_03", "MOBNAME_NOTHING");
    };
}

func void GRAVEJORN_STOP() {
    HERO.AIVAR[4] = FALSE;
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
}

func void GRAVEJORN_CUTSCENE() {
    if ((Q405_INTERESTINGEVENT) == (FALSE)) {
        FF_APPLYONCEEXT(63832, 75, 4);
    };
    MOB_CHANGEFOCUSNAME("KM_GRAVE_JORN", "MOBNAME_NOTHING");
    FADESCREENTOBLACKF(1, 47453, 1000);
    GRAVEJORN_STOP();
}

func void Q405_INTERESTINGEVENT_FADESCREEN() {
    FF_APPLYONCEEXTGT(47454, 0, -(1));
    B_STARTOTHERROUTINE(NONE_1_JORN, "Q405_OWO");
    NPC_REFRESH(NONE_1_JORN);
    TELEPORTNPCTOWP(51439, NONE_1_JORN.WP);
    TELEPORTNPCTOWP(1819, "SLUMS_HOUSE17_35");
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(1);
}

func void Q405_INTERESTINGEVENT_MOVER() {
    CHANGEVOBCOLLISION("Q405_CROSSBOW_NEAR", FALSE, FALSE, FALSE, TRUE);
    CHANGEVOBCOLLISION("KM_GRAVE_JORN", FALSE, FALSE, FALSE, TRUE);
    CHANGEVOBCOLLISION("KM_GRAVE_JORN_02", TRUE, TRUE, TRUE, TRUE);
}

func void GRAVEJORN_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_HOUSE17_GRAVE_01")) {
            if ((GRAVEJORN_ISINUSE) == (FALSE)) {
                if ((GRAVEJORN_USED) > (GRAVEJORN_01_USED)) {
                    GRAVEJORN_01_USED = (GRAVEJORN_01_USED) + (1);
                    GRAVEJORN_REWARD();
                } else {
                    GRAVEJORN_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_HOUSE17_GRAVE_02")) {
            if ((GRAVEJORN_ISINUSE) == (FALSE)) {
                if ((GRAVEJORN_USED) > (GRAVEJORN_02_USED)) {
                    GRAVEJORN_02_USED = (GRAVEJORN_02_USED) + (1);
                    GRAVEJORN_REWARD();
                } else {
                    GRAVEJORN_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_HOUSE17_GRAVE_03")) {
            if ((GRAVEJORN_ISINUSE) == (FALSE)) {
                if ((GRAVEJORN_USED) > (GRAVEJORN_03_USED)) {
                    GRAVEJORN_03_USED = (GRAVEJORN_03_USED) + (1);
                    GRAVEJORN_REWARD();
                } else {
                    GRAVEJORN_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_HOUSE17_GRAVE_JORN")) {
            if ((GRAVEJORN_ISINUSE) == (FALSE)) {
                if ((GRAVEJORN_USED) > (GRAVEJORN_04_USED)) {
                    GRAVEJORN_04_USED = (GRAVEJORN_04_USED) + (1);
                    GRAVEJORN_CUTSCENE();
                } else {
                    GRAVEJORN_STOP();
                };
            };
        };
    };
}

func void GRAVEJORN_S0() {
    GRAVEJORN_ISINUSE = FALSE;
    HERO.AIVAR[4] = FALSE;
    B_ENDPRODUCTIONDIALOG();
}

func void SACHSDOOR_MOVER() {
    var ZCMOVER MOVER2;
    var int MOVPTR2;
    var int MOVPTR1;
    var ZCMOVER MOVER1;
    var int CHANGESACHSDOORCOLLISION;
    if ((CHANGESACHSDOORCOLLISION) == (0)) {
        PRINTD("Rozpoczynam - SACHSDOOR_Mover");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_JORNHOUSE_SACHSDOOR_01");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("KM_JORNHOUSE_SACHSDOOR_02");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("KM_JORNHOUSE_DOOR_SACHS_01", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("KM_JORNHOUSE_DOOR_SACHS_02", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_JORNHOUSE_SACHSDOOR_01");
        WLD_SENDTRIGGER("KM_JORNHOUSE_SACHSDOOR_02");
        CHANGESACHSDOORCOLLISION = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - SACHSDOOR_Mover");
        CHANGEVOBCOLLISION("KM_JORNHOUSE_DOOR_SACHS_01", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("KM_JORNHOUSE_DOOR_SACHS_02", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(47458);
        CHANGESACHSDOORCOLLISION = 0;
    };
}

