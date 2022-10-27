const int GOLDMOB_TESTARAXOS_AMOUNT_MAX = 10;
var int GOLDMOB_TESTARAXOS_AMOUNT = 0;
func int B_ARAXOSTEST_CHECKWP() {
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART7_MINE_GOLDTEST")) && ((GOLDMOB_TESTARAXOS_AMOUNT_MAX) > (GOLDMOB_TESTARAXOS_AMOUNT))) {
        GOLDMOB_TESTARAXOS_AMOUNT = (GOLDMOB_TESTARAXOS_AMOUNT) + (1);
        return TRUE;
    };
    return FALSE;
}

func void SQ119_ARAXOSTEST_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_GOLDMINE_ARAXOSTEST;
        AI_PROCESSINFOS(HER);
    };
}

instance SQ119_ARAXOSTEST_S1.HER(C_NPC)
instance PC_SQ119_ARAXOSTEST_ADDON_HOUR(C_INFO) {
    NPC = 0xc3ab;
    NR = 2;
    CONDITION = PC_SQ119_ARAXOSTEST_ADDON_HOUR_CONDITION;
    INFORMATION = PC_SQ119_ARAXOSTEST_ADDON_HOUR_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_DIGALITTLE;
}

func int PC_SQ119_ARAXOSTEST_ADDON_HOUR_CONDITION() {
    if (((PLAYER_MOBSI_PRODUCTION) == (MOBSI_GOLDMINE_ARAXOSTEST)) && ((SQ119_ARAXOSTEST_START) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int ARAXOSTEST_GOLDCOUNTER = 0;
func void PC_SQ119_ARAXOSTEST_ADDON_HOUR_INFO() {
    CURRENTCHANCE = HLP_RANDOM(100);
    MULTINUGGET = HLP_RANDOM(10);
    if ((B_ARAXOSTEST_CHECKWP()) == (TRUE)) {
        if ((CURRENTCHANCE) <= (HERO_HACKCHANCE)) {
            if (((ARAXOSTEST_GOLDCOUNTER) >= (20)) && ((MULTINUGGET) >= (8))) {
                CREATEINVITEMS(HERO, 0x837c, 3);
                PRINTSCREENS(PRINT_GOLDDIGV3, -(1), -(1), FONT_SCREENSMALL, 2);
                if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART7_MINE_GOLDTEST")) {
                    SQ119_ARAXOSTEST_COUNTGOLDNUGGET = (SQ119_ARAXOSTEST_COUNTGOLDNUGGET) + (3);
                    PRINTD(CS2("Zdobyte samorodki: ", INTTOSTRING(SQ119_ARAXOSTEST_COUNTGOLDNUGGET)));
                };
            } else if (((ARAXOSTEST_GOLDCOUNTER) >= (7)) && ((MULTINUGGET) >= (5))) {
                CREATEINVITEMS(HERO, 0x837c, 2);
                PRINTSCREENS(PRINT_GOLDDIGV2, -(1), -(1), FONT_SCREENSMALL, 2);
                ARAXOSTEST_GOLDCOUNTER = (ARAXOSTEST_GOLDCOUNTER) + (1);
                if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART7_MINE_GOLDTEST")) {
                    SQ119_ARAXOSTEST_COUNTGOLDNUGGET = (SQ119_ARAXOSTEST_COUNTGOLDNUGGET) + (2);
                    PRINTD(CS2("Zdobyte samorodki: ", INTTOSTRING(SQ119_ARAXOSTEST_COUNTGOLDNUGGET)));
                };
            } else {
                CREATEINVITEMS(HERO, 0x837c, 1);
                PRINTSCREENS(PRINT_GOLDDIGV1, -(1), -(1), FONT_SCREENSMALL, 2);
                ARAXOSTEST_GOLDCOUNTER = (ARAXOSTEST_GOLDCOUNTER) + (1);
                if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART7_MINE_GOLDTEST")) {
                    SQ119_ARAXOSTEST_COUNTGOLDNUGGET = (SQ119_ARAXOSTEST_COUNTGOLDNUGGET) + (1);
                    PRINTD(CS2("Zdobyte samorodki: ", INTTOSTRING(SQ119_ARAXOSTEST_COUNTGOLDNUGGET)));
                };
            } else {
                ACH_16_GOLD = TRUE;
            } else {
                /* set_instance(0) */;
            };
        };
        PRINTSCREENS(PRINT_GOLDDIGGING, -(1), -(1), FONT_SCREENSMALL, 2);
    };
    PRINTSCREENS(PRINT_NOTHINGLEFT, -(1), -(1), FONT_SCREENSMALL, 2);
    B_ENDPRODUCTIONDIALOG();
    if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART7_MINE_GOLDTEST")) {
        SQ119_ARAXOSTEST_FINISH = TRUE;
        GOLDMOB_TESTARAXOS_AMOUNT = 0;
    };
}

var int PC_SQ119_ARAXOSTEST_ADDON_HOUR_INFO.CURRENTCHANCE = 0;
var int PC_SQ119_ARAXOSTEST_ADDON_HOUR_INFO.MULTINUGGET = 0;