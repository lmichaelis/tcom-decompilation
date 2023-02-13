var int GOLDMOB_01_USED;
var int GOLDMOB_02_USED;
var int GOLDMOB_03_USED;
var int GOLDMOB_04_USED;
var int GOLDMOB_05_USED;
var int GOLDMOB_06_USED;
var int GOLDMOB_07_USED;
var int GOLDMOB_08_USED;
var int GOLDMOB_09_USED;
var int GOLDMOB_10_USED;
var int GOLDMOB_ISINUSE;
const int GOLDMOB_USED = 1;
func void GOLDMINEPART3_CHANGENAME() {
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART3_GOLDMINE_ORE_01")) && ((GOLDMOB_01_USED) == (GOLDMOB_USED))) {
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART3_GOLDMINE_ORE_02")) && ((GOLDMOB_02_USED) == (GOLDMOB_USED))) {
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART3_GOLDMINE_ORE_03")) && ((GOLDMOB_03_USED) == (GOLDMOB_USED))) {
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART3_GOLDMINE_ORE_04")) && ((GOLDMOB_04_USED) == (GOLDMOB_USED))) {
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART3_GOLDMINE_ORE_05")) && ((GOLDMOB_05_USED) == (GOLDMOB_USED))) {
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART3_GOLDMINE_ORE_06")) && ((GOLDMOB_06_USED) == (GOLDMOB_USED))) {
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART3_GOLDMINE_ORE_07")) && ((GOLDMOB_07_USED) == (GOLDMOB_USED))) {
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART3_GOLDMINE_ORE_08")) && ((GOLDMOB_08_USED) == (GOLDMOB_USED))) {
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART3_GOLDMINE_ORE_09")) && ((GOLDMOB_09_USED) == (GOLDMOB_USED))) {
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART3_GOLDMINE_ORE_10")) && ((GOLDMOB_10_USED) == (GOLDMOB_USED))) {
        MOB_CHANGEFOCUSNAME("IRONMOB_SQ301_10", "MOBNAME_GOLDMOB_EMPTY");
    };
}

func void GOLDMINEPART3_REWARD() {
    var int RANDOM;
    SQ301_MINEGOLDCOUNT = (SQ301_MINEGOLDCOUNT) + (1);
    GOLDMOB_ISINUSE = TRUE;
    if ((SQ301_MINEGOLDCOUNT) == (10)) {
        B_GIVEPLAYERXP(XP_SQ301_MINEGOLD_ALL);
        B_LOGENTRY(TOPIC_SQ301, LOG_SQ301_ALLMINEDONE);
    };
    B_GIVEPLAYERXP(XP_SQ301_MINEGOLD);
    RANDOM = HLP_RANDOM(40);
    if (((RANDOM) >= (0)) && ((RANDOM) < (10))) {
        PRINTSCREENS(PRINT_IRONDIGV1, -(1), -(1), FONT_SCREENSMALL, 2);
        CREATEINVITEMS(HERO, 35980, 1);
    };
    if (((RANDOM) >= (10)) && ((RANDOM) < (20))) {
        PRINTSCREENS(PRINT_IRONDIGV2, -(1), -(1), FONT_SCREENSMALL, 2);
        CREATEINVITEMS(HERO, 35980, 2);
    };
    if (((RANDOM) >= (20)) && ((RANDOM) < (30))) {
        PRINTSCREENS(PRINT_IRONDIGV1, -(1), -(1), FONT_SCREENSMALL, 2);
        CREATEINVITEMS(HERO, 35980, 1);
    };
    if (((RANDOM) >= (30)) && ((RANDOM) < (40))) {
        PRINTSCREENS(PRINT_IRONDIGV2, -(1), -(1), FONT_SCREENSMALL, 2);
        CREATEINVITEMS(HERO, 35980, 2);
    };
    if ((RANDOM) == (40)) {
        PRINTSCREENS(PRINT_IRONDIGV3, -(1), -(1), FONT_SCREENSMALL, 2);
        CREATEINVITEMS(HERO, 35980, 3);
    };
    GOLDMINEPART3_CHANGENAME();
}

func void GOLDMINEPART3_STOP() {
    HERO.AIVAR[4] = FALSE;
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    MEM_CALLBYSTRING("PLAYER_PLUNDER_IS_EMPTY");
}

func void GOLDMINEPART3_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART3_GOLDMINE_ORE_01")) {
            if ((GOLDMOB_ISINUSE) == (FALSE)) {
                if ((GOLDMOB_USED) > (GOLDMOB_01_USED)) {
                    GOLDMOB_01_USED = (GOLDMOB_01_USED) + (1);
                    GOLDMINEPART3_REWARD();
                } else {
                    GOLDMINEPART3_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART3_GOLDMINE_ORE_02")) {
            if ((GOLDMOB_ISINUSE) == (FALSE)) {
                if ((GOLDMOB_USED) > (GOLDMOB_02_USED)) {
                    GOLDMOB_02_USED = (GOLDMOB_02_USED) + (1);
                    GOLDMINEPART3_REWARD();
                } else {
                    GOLDMINEPART3_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART3_GOLDMINE_ORE_03")) {
            if ((GOLDMOB_ISINUSE) == (FALSE)) {
                if ((GOLDMOB_USED) > (GOLDMOB_03_USED)) {
                    GOLDMOB_03_USED = (GOLDMOB_03_USED) + (1);
                    GOLDMINEPART3_REWARD();
                } else {
                    GOLDMINEPART3_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART3_GOLDMINE_ORE_04")) {
            if ((GOLDMOB_ISINUSE) == (FALSE)) {
                if ((GOLDMOB_USED) > (GOLDMOB_04_USED)) {
                    GOLDMOB_04_USED = (GOLDMOB_04_USED) + (1);
                    GOLDMINEPART3_REWARD();
                } else {
                    GOLDMINEPART3_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART3_GOLDMINE_ORE_05")) {
            if ((GOLDMOB_ISINUSE) == (FALSE)) {
                if ((GOLDMOB_USED) > (GOLDMOB_05_USED)) {
                    GOLDMOB_05_USED = (GOLDMOB_05_USED) + (1);
                    GOLDMINEPART3_REWARD();
                } else {
                    GOLDMINEPART3_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART3_GOLDMINE_ORE_06")) {
            if ((GOLDMOB_ISINUSE) == (FALSE)) {
                if ((GOLDMOB_USED) > (GOLDMOB_06_USED)) {
                    GOLDMOB_06_USED = (GOLDMOB_06_USED) + (1);
                    GOLDMINEPART3_REWARD();
                } else {
                    GOLDMINEPART3_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART3_GOLDMINE_ORE_07")) {
            if ((GOLDMOB_ISINUSE) == (FALSE)) {
                if ((GOLDMOB_USED) > (GOLDMOB_07_USED)) {
                    GOLDMOB_07_USED = (GOLDMOB_07_USED) + (1);
                    GOLDMINEPART3_REWARD();
                } else {
                    GOLDMINEPART3_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART3_GOLDMINE_ORE_08")) {
            if ((GOLDMOB_ISINUSE) == (FALSE)) {
                if ((GOLDMOB_USED) > (GOLDMOB_08_USED)) {
                    GOLDMOB_08_USED = (GOLDMOB_08_USED) + (1);
                    GOLDMINEPART3_REWARD();
                } else {
                    GOLDMINEPART3_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART3_GOLDMINE_ORE_09")) {
            if ((GOLDMOB_ISINUSE) == (FALSE)) {
                if ((GOLDMOB_USED) > (GOLDMOB_09_USED)) {
                    GOLDMOB_09_USED = (GOLDMOB_09_USED) + (1);
                    GOLDMINEPART3_REWARD();
                } else {
                    GOLDMINEPART3_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART3_GOLDMINE_ORE_10")) {
            if ((GOLDMOB_ISINUSE) == (FALSE)) {
                if ((GOLDMOB_USED) > (GOLDMOB_10_USED)) {
                    GOLDMOB_10_USED = (GOLDMOB_10_USED) + (1);
                    GOLDMINEPART3_REWARD();
                } else {
                    GOLDMINEPART3_STOP();
                };
            };
        };
    };
}

func void GOLDMINEPART3_S0() {
    GOLDMOB_ISINUSE = FALSE;
    MEM_CALLBYSTRING("PLAYER_PLUNDER_IS_EMPTY");
    HERO.AIVAR[4] = FALSE;
    B_ENDPRODUCTIONDIALOG();
}

