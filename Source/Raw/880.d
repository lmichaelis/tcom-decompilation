var int GRAVEJORN_01_USED = 0;
var int GRAVEJORN_02_USED = 0;
var int GRAVEJORN_03_USED = 0;
var int GRAVEJORN_04_USED = 0;
var int GRAVEJORN_ISINUSE = 0;
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
        FF_APPLYONCEEXT(0xf958, 75, 4);
    };
    MOB_CHANGEFOCUSNAME("KM_GRAVE_JORN", "MOBNAME_NOTHING");
    FADESCREENTOBLACKF(1, 0xb95d, 1000);
    GRAVEJORN_STOP();
}

func void Q405_INTERESTINGEVENT_FADESCREEN() {
    FF_APPLYONCEEXTGT(0xb95e, 0, -(1));
    B_STARTOTHERROUTINE(NONE_1_JORN, "Q405_OWO");
    NPC_REFRESH(NONE_1_JORN);
    TELEPORTNPCTOWP(0xc8ef, NONE_1_JORN.WP);
    TELEPORTNPCTOWP(0x71b, "SLUMS_HOUSE17_35");
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(1);
}

func void Q405_INTERESTINGEVENT_MOVER() {
    CHANGEVOBCOLLISION("Q405_CROSSBOW_NEAR", FALSE, FALSE, FALSE, TRUE);
    CHANGEVOBCOLLISION("KM_GRAVE_JORN", FALSE, FALSE, FALSE, TRUE);
    CHANGEVOBCOLLISION("KM_GRAVE_JORN_02", TRUE, TRUE, TRUE, TRUE);
}

func void GRAVEJORN_S1() {
    HER = HLP_GETNPC(0xc3ab);
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

instance GRAVEJORN_S1.HER(C_NPC)
func void GRAVEJORN_S0() {
    GRAVEJORN_ISINUSE = FALSE;
    HERO.AIVAR[4] = FALSE;
    B_ENDPRODUCTIONDIALOG();
}

func void SACHSDOOR_MOVER() {
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
        FF_REMOVE(0xb962);
        CHANGESACHSDOORCOLLISION = 0;
    };
}

var int SACHSDOOR_MOVER.CHANGESACHSDOORCOLLISION = 0;
instance SACHSDOOR_MOVER.MOVER1(ZCMOVER)
instance SACHSDOOR_MOVER.MOVER2(ZCMOVER)
var int SACHSDOOR_MOVER.MOVPTR1 = 0;
var int SACHSDOOR_MOVER.MOVPTR2 = 0;
