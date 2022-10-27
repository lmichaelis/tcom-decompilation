var int SQ417_LAMPMOB_01_USED = 0;
var int SQ417_LAMPMOB_02_USED = 0;
var int SQ417_LAMPMOB_03_USED = 0;
var int SQ417_LAMPMOB_04_USED = 0;
func void SQ417_ADDLAMPS() {
    SQ417_COUNTLAMPS = (SQ417_COUNTLAMPS) + (1);
    PRINTD(CS2("Rozpalone lampy: ", INTTOSTRING(SQ417_COUNTLAMPS)));
    if ((SQ417_COUNTLAMPS) == (4)) {
        SQ417_PATROLTIME = 5;
        B_LOGENTRY(TOPIC_SQ417, LOG_SQ417_PATROL_LAMPS);
    };
}

func void SQ417_LAMP_STOP() {
    HERO.AIVAR[4] = FALSE;
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
}

func void SQ417_LAMP_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "WOLFSDEN_WALL_SQ417_LAMP_01")) {
            if ((SQ417_LAMPMOB_01_USED) == (0)) {
                MOB_CHANGEFOCUSNAME("SQ417_LAMP_01", "MOBNAME_NOTHING");
                SQ417_LAMPMOB_01_USED = (SQ417_LAMPMOB_01_USED) + (1);
                SQ417_ADDLAMPS();
            } else {
                SQ417_LAMP_STOP();
            } else {
                /* set_instance(0) */;
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "WOLFSDEN_WALL_SQ417_LAMP_02")) {
            if ((SQ417_LAMPMOB_02_USED) == (0)) {
                MOB_CHANGEFOCUSNAME("SQ417_LAMP_02", "MOBNAME_NOTHING");
                SQ417_LAMPMOB_02_USED = (SQ417_LAMPMOB_02_USED) + (1);
                SQ417_ADDLAMPS();
            } else {
                SQ417_LAMP_STOP();
            } else {
                /* set_instance(0) */;
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "WOLFSDEN_WALL_SQ417_LAMP_03")) {
            if ((SQ417_LAMPMOB_03_USED) == (0)) {
                MOB_CHANGEFOCUSNAME("SQ417_LAMP_03", "MOBNAME_NOTHING");
                SQ417_LAMPMOB_03_USED = (SQ417_LAMPMOB_03_USED) + (1);
                SQ417_ADDLAMPS();
            } else {
                SQ417_LAMP_STOP();
            } else {
                /* set_instance(0) */;
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "WOLFSDEN_WALL_SQ417_LAMP_04")) {
            if ((SQ417_LAMPMOB_04_USED) == (0)) {
                MOB_CHANGEFOCUSNAME("SQ417_LAMP_04", "MOBNAME_NOTHING");
                SQ417_LAMPMOB_04_USED = (SQ417_LAMPMOB_04_USED) + (1);
                SQ417_ADDLAMPS();
            } else {
                SQ417_LAMP_STOP();
            };
        };
    };
}

instance SQ417_LAMP_S1.HER(C_NPC)
func void SQ417_LAMP_S0() {
    B_ENDPRODUCTIONDIALOG();
}

