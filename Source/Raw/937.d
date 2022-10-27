const int MINING_ORE_01_MAX = 5;
const int MINING_ORE_02_MAX = 5;
const int MINING_ORE_03_MAX = 5;
const int MINING_ORE_04_MAX = 5;
const int MINING_ORE_05_MAX = 5;
const int MINING_ORE_06_MAX = 5;
const int MINING_ORE_07_MAX = 5;
const int MINING_ORE_08_MAX = 5;
var int MINING_ORE_01_AMOUNT = 0;
var int MINING_ORE_02_AMOUNT = 0;
var int MINING_ORE_03_AMOUNT = 0;
var int MINING_ORE_04_AMOUNT = 0;
var int MINING_ORE_05_AMOUNT = 0;
var int MINING_ORE_06_AMOUNT = 0;
var int MINING_ORE_07_AMOUNT = 0;
var int MINING_ORE_08_AMOUNT = 0;
var int ORECOUNTER_MINING = 0;
func int B_OREMINE_CHECKWP() {
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART6_MAGICORE_01")) && ((MINING_ORE_01_MAX) > (MINING_ORE_01_AMOUNT))) {
            MINING_ORE_01_AMOUNT = (MINING_ORE_01_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART8_MAGICORE_01")) && ((MINING_ORE_02_MAX) > (MINING_ORE_02_AMOUNT))) {
            MINING_ORE_02_AMOUNT = (MINING_ORE_02_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_MAGICORE_01")) && ((MINING_ORE_03_MAX) > (MINING_ORE_03_AMOUNT))) {
            MINING_ORE_03_AMOUNT = (MINING_ORE_03_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_MAGICORE_02")) && ((MINING_ORE_04_MAX) > (MINING_ORE_04_AMOUNT))) {
            MINING_ORE_04_AMOUNT = (MINING_ORE_04_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_MAGICORE_03")) && ((MINING_ORE_05_MAX) > (MINING_ORE_05_AMOUNT))) {
            MINING_ORE_05_AMOUNT = (MINING_ORE_05_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART17_MAGICORE_01")) && ((MINING_ORE_06_MAX) > (MINING_ORE_06_AMOUNT))) {
            MINING_ORE_06_AMOUNT = (MINING_ORE_06_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART17_MAGICORE_02")) && ((MINING_ORE_07_MAX) > (MINING_ORE_07_AMOUNT))) {
            MINING_ORE_07_AMOUNT = (MINING_ORE_07_AMOUNT) + (1);
            return TRUE;
        };
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VOLFZACKE_OREMOB_01")) && ((MINING_ORE_08_MAX) > (MINING_ORE_08_AMOUNT))) {
        MINING_ORE_08_AMOUNT = (MINING_ORE_08_AMOUNT) + (1);
        return TRUE;
    };
    return FALSE;
}

func void MINING_ORE_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_MINING_ORE;
        AI_PROCESSINFOS(HER);
        if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
            if ((HERO_HACKCHANCE) < (25)) {
                EXTRACTION_TEACHSOMEMORE_LOGENTRY();
            };
        };
    };
}

instance MINING_ORE_S1.HER(C_NPC)
func void MINING_ORE_CHANGENAME() {
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART6_MAGICORE_01")) && ((MINING_ORE_01_AMOUNT) == (MINING_ORE_01_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART8_MAGICORE_01")) && ((MINING_ORE_02_AMOUNT) == (MINING_ORE_02_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_MAGICORE_01")) && ((MINING_ORE_03_AMOUNT) == (MINING_ORE_03_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_MAGICORE_02")) && ((MINING_ORE_04_AMOUNT) == (MINING_ORE_04_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_MAGICORE_03")) && ((MINING_ORE_05_AMOUNT) == (MINING_ORE_05_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART17_MAGICORE_01")) && ((MINING_ORE_06_AMOUNT) == (MINING_ORE_06_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART17_MAGICORE_02")) && ((MINING_ORE_07_AMOUNT) == (MINING_ORE_07_MAX))) {
            MOB_CHANGEFOCUSNAME("MAGIC_ORE_07", "MOBNAME_GOLDMOB_EMPTY");
        };
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VOLFZACKE_OREMOB_01")) && ((MINING_ORE_08_AMOUNT) == (MINING_ORE_08_MAX))) {
        MOB_CHANGEFOCUSNAME("MINING_VOLFZACKE_MAGICORE_01", "MOBNAME_GOLDMOB_EMPTY");
    };
}

instance PC_MINING_ORE_END(C_INFO) {
    NPC = 0xc3ab;
    NR = 999;
    CONDITION = PC_MINING_ORE_END_CONDITION;
    INFORMATION = PC_MINING_ORE_END_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int PC_MINING_ORE_END_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_MINING_ORE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_MINING_ORE_END_INFO() {
    B_ENDPRODUCTIONDIALOG();
}

instance PC_MINING_ORE_HOUR(C_INFO) {
    NPC = 0xc3ab;
    NR = 2;
    CONDITION = PC_MINING_ORE_HOUR_CONDITION;
    INFORMATION = PC_MINING_ORE_HOUR_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_DIGALITTLE;
}

func int PC_MINING_ORE_HOUR_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_MINING_ORE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_MINING_ORE_HOUR_INFO() {
    if ((QM_304_DETAIL) == (FALSE)) {
        QM_304_DETAIL = TRUE;
    };
    CURRENTCHANCE = HLP_RANDOM(100);
    MULTINUGGET = HLP_RANDOM(10);
    if ((B_OREMINE_CHECKWP()) == (TRUE)) {
        if ((CURRENTCHANCE) <= (HERO_HACKCHANCE)) {
            if (((ORECOUNTER_MINING) >= (20)) && ((MULTINUGGET) >= (8))) {
                CREATEINVITEMS(HERO, 0x859a, 3);
                PRINTSCREENS(PRINT_OREDIGV3, -(1), -(1), FONT_SCREENSMALL, 2);
                ORECOUNTER_MINING = 0;
            } else if (((ORECOUNTER_MINING) >= (7)) && ((MULTINUGGET) >= (5))) {
                CREATEINVITEMS(HERO, 0x859a, 2);
                PRINTSCREENS(PRINT_OREDIGV2, -(1), -(1), FONT_SCREENSMALL, 2);
                ORECOUNTER_MINING = (ORECOUNTER_MINING) + (1);
            } else {
                CREATEINVITEMS(HERO, 0x859a, 1);
                PRINTSCREENS(PRINT_OREDIGV1, -(1), -(1), FONT_SCREENSMALL, 2);
                ORECOUNTER_MINING = (ORECOUNTER_MINING) + (1);
            } else {
                ACH_16_ORE = TRUE;
            } else {
                B_PLAYERFINDITEM(0x8c95, 3);
            } else {
                /* set_instance(0) */;
            };
        };
        PRINTSCREENS(PRINT_OREDIGGING, -(1), -(1), FONT_SCREENSMALL, 2);
        B_PLAYERFINDITEM(0x8c95, 2);
        B_TEACHEXTRACTION_MYSELF();
    };
    MINING_ORE_CHANGENAME();
    PRINTSCREENS(PRINT_NOTHINGLEFT, -(1), -(1), FONT_SCREENSMALL, 2);
    B_ENDPRODUCTIONDIALOG();
}

var int PC_MINING_ORE_HOUR_INFO.CURRENTCHANCE = 0;
var int PC_MINING_ORE_HOUR_INFO.MULTINUGGET = 0;
