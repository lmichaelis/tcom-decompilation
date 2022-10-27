func void FISHING_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_FISHING;
        AI_PROCESSINFOS(HER);
        if ((FISHING_LOGENTRY) == (FALSE)) {
            FISHING_LOGENTRY = TRUE;
            LOG_CREATETOPIC(TOPIC_EXTRACTION, LOG_NOTE);
            B_LOGENTRY(TOPIC_EXTRACTION, LOG_FISHING_INFO);
        };
    };
}

instance FISHING_S1.HER(C_NPC)
var int FISHING_S1.FISHING_LOGENTRY = 0;
func int PC_FISHING_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_FISHING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

instance PC_FISHING_END(C_INFO) {
    NPC = 0xc3ab;
    NR = 999;
    CONDITION = PC_FISHING_CONDITION;
    INFORMATION = PC_FISHING_END_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func void PC_FISHING_END_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[4] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
}

const int FISHING_SPOT_01_MAX = 6;
const int FISHING_SPOT_02_MAX = 6;
const int FISHING_SPOT_03_MAX = 6;
const int FISHING_SPOT_04_MAX = 6;
const int FISHING_SPOT_05_MAX = 6;
const int FISHING_SPOT_06_MAX = 6;
const int FISHING_SPOT_07_MAX = 6;
const int FISHING_SPOT_08_MAX = 6;
const int FISHING_SPOT_09_MAX = 6;
const int FISHING_SPOT_10_MAX = 6;
const int FISHING_SPOT_11_MAX = 6;
const int FISHING_SPOT_12_MAX = 6;
const int FISHING_SPOT_13_MAX = 6;
const int FISHING_SPOT_14_MAX = 6;
const int FISHING_SPOT_15_MAX = 6;
const int FISHING_SPOT_16_MAX = 6;
const int FISHING_SPOT_17_MAX = 6;
const int FISHING_SPOT_18_MAX = 6;
const int FISHING_SPOT_19_MAX = 6;
const int FISHING_SPOT_20_MAX = 6;
const int FISHING_SPOT_21_MAX = 6;
const int FISHING_SPOT_22_MAX = 6;
const int FISHING_SPOT_23_MAX = 6;
const int FISHING_SPOT_24_MAX = 6;
var int FISHING_SPOT_01_AMOUNT = 0;
var int FISHING_SPOT_02_AMOUNT = 0;
var int FISHING_SPOT_03_AMOUNT = 0;
var int FISHING_SPOT_04_AMOUNT = 0;
var int FISHING_SPOT_05_AMOUNT = 0;
var int FISHING_SPOT_06_AMOUNT = 0;
var int FISHING_SPOT_07_AMOUNT = 0;
var int FISHING_SPOT_08_AMOUNT = 0;
var int FISHING_SPOT_09_AMOUNT = 0;
var int FISHING_SPOT_10_AMOUNT = 0;
var int FISHING_SPOT_11_AMOUNT = 0;
var int FISHING_SPOT_12_AMOUNT = 0;
var int FISHING_SPOT_13_AMOUNT = 0;
var int FISHING_SPOT_14_AMOUNT = 0;
var int FISHING_SPOT_15_AMOUNT = 0;
var int FISHING_SPOT_16_AMOUNT = 0;
var int FISHING_SPOT_17_AMOUNT = 0;
var int FISHING_SPOT_18_AMOUNT = 0;
var int FISHING_SPOT_19_AMOUNT = 0;
var int FISHING_SPOT_20_AMOUNT = 0;
var int FISHING_SPOT_21_AMOUNT = 0;
var int FISHING_SPOT_22_AMOUNT = 0;
var int FISHING_SPOT_23_AMOUNT = 0;
var int FISHING_SPOT_24_AMOUNT = 0;
func int B_FISHING_CHECKWP() {
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_FISHING_PLACE_01")) && ((FISHING_SPOT_01_MAX) > (FISHING_SPOT_01_AMOUNT))) {
        FISHING_SPOT_01_AMOUNT = (FISHING_SPOT_01_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PARTM4_FISHING_SPOT_02")) && ((FISHING_SPOT_02_MAX) > (FISHING_SPOT_02_AMOUNT))) {
        FISHING_SPOT_02_AMOUNT = (FISHING_SPOT_02_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "HARBOUR_FISHING_SPOT_03")) && ((FISHING_SPOT_03_MAX) > (FISHING_SPOT_03_AMOUNT))) {
        FISHING_SPOT_03_AMOUNT = (FISHING_SPOT_03_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "HARBOUR_FISHING_SPOT_04")) && ((FISHING_SPOT_04_MAX) > (FISHING_SPOT_04_AMOUNT))) {
        FISHING_SPOT_04_AMOUNT = (FISHING_SPOT_04_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "HARBOUR_FISHING_SPOT_05")) && ((FISHING_SPOT_05_MAX) > (FISHING_SPOT_05_AMOUNT))) {
        FISHING_SPOT_05_AMOUNT = (FISHING_SPOT_05_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VILLAGE_FISHING_SPOT_06")) && ((FISHING_SPOT_06_MAX) > (FISHING_SPOT_06_AMOUNT))) {
        FISHING_SPOT_06_AMOUNT = (FISHING_SPOT_06_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VILLAGE_FISHING_SPOT_07")) && ((FISHING_SPOT_07_MAX) > (FISHING_SPOT_07_AMOUNT))) {
        FISHING_SPOT_07_AMOUNT = (FISHING_SPOT_07_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_FISHING_01")) && ((FISHING_SPOT_08_MAX) > (FISHING_SPOT_08_AMOUNT))) {
        FISHING_SPOT_08_AMOUNT = (FISHING_SPOT_08_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_FISHING_02")) && ((FISHING_SPOT_09_MAX) > (FISHING_SPOT_09_AMOUNT))) {
        FISHING_SPOT_09_AMOUNT = (FISHING_SPOT_09_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_FISHING_03")) && ((FISHING_SPOT_10_MAX) > (FISHING_SPOT_10_AMOUNT))) {
        FISHING_SPOT_10_AMOUNT = (FISHING_SPOT_10_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_FISHING_04")) && ((FISHING_SPOT_11_MAX) > (FISHING_SPOT_11_AMOUNT))) {
        FISHING_SPOT_11_AMOUNT = (FISHING_SPOT_11_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "P17_HAVEN_NOENTRY_KILLHERO")) && ((FISHING_SPOT_12_MAX) > (FISHING_SPOT_12_AMOUNT))) {
        FISHING_SPOT_12_AMOUNT = (FISHING_SPOT_12_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_FISHING_PLACE_02")) && ((FISHING_SPOT_13_MAX) > (FISHING_SPOT_13_AMOUNT))) {
        FISHING_SPOT_13_AMOUNT = (FISHING_SPOT_13_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_FISHING_PLACE_03")) && ((FISHING_SPOT_14_MAX) > (FISHING_SPOT_14_AMOUNT))) {
        FISHING_SPOT_14_AMOUNT = (FISHING_SPOT_14_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_FISHING_PLACE_04")) && ((FISHING_SPOT_15_MAX) > (FISHING_SPOT_15_AMOUNT))) {
        FISHING_SPOT_15_AMOUNT = (FISHING_SPOT_15_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART1_FISHING_PLACE_01")) && ((FISHING_SPOT_16_MAX) > (FISHING_SPOT_16_AMOUNT))) {
        FISHING_SPOT_16_AMOUNT = (FISHING_SPOT_16_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART1_FISHING_PLACE_02")) && ((FISHING_SPOT_17_MAX) > (FISHING_SPOT_17_AMOUNT))) {
        FISHING_SPOT_17_AMOUNT = (FISHING_SPOT_17_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART1_FISHING_PLACE_03")) && ((FISHING_SPOT_18_MAX) > (FISHING_SPOT_18_AMOUNT))) {
        FISHING_SPOT_18_AMOUNT = (FISHING_SPOT_18_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART1_FISHING_PLACE_04")) && ((FISHING_SPOT_19_MAX) > (FISHING_SPOT_19_AMOUNT))) {
        FISHING_SPOT_19_AMOUNT = (FISHING_SPOT_19_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_FISHING_PLACE_01")) && ((FISHING_SPOT_20_MAX) > (FISHING_SPOT_20_AMOUNT))) {
        FISHING_SPOT_20_AMOUNT = (FISHING_SPOT_20_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_FISHING_PLACE_02")) && ((FISHING_SPOT_21_MAX) > (FISHING_SPOT_21_AMOUNT))) {
        FISHING_SPOT_21_AMOUNT = (FISHING_SPOT_21_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_FISHING_PLACE_03")) && ((FISHING_SPOT_22_MAX) > (FISHING_SPOT_22_AMOUNT))) {
        FISHING_SPOT_22_AMOUNT = (FISHING_SPOT_22_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_FISHING_PLACE_04")) && ((FISHING_SPOT_23_MAX) > (FISHING_SPOT_23_AMOUNT))) {
        FISHING_SPOT_23_AMOUNT = (FISHING_SPOT_23_AMOUNT) + (1);
        return TRUE;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_FISHING_PLACE_05")) && ((FISHING_SPOT_24_MAX) > (FISHING_SPOT_24_AMOUNT))) {
        FISHING_SPOT_24_AMOUNT = (FISHING_SPOT_24_AMOUNT) + (1);
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void B_FISHING_CHANGENAME() {
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_FISHING_PLACE_01")) && ((FISHING_SPOT_01_AMOUNT) == (FISHING_SPOT_01_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_01", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_01_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_01_PFX_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_01_PFX_03", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_01_PFX_04", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PARTM4_FISHING_SPOT_02")) && ((FISHING_SPOT_02_AMOUNT) == (FISHING_SPOT_02_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_02", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_02_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_02_PFX_02", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_02_PFX_03", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_02_PFX_04", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "HARBOUR_FISHING_SPOT_03")) && ((FISHING_SPOT_03_AMOUNT) == (FISHING_SPOT_03_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_03", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_03_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_03_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "HARBOUR_FISHING_SPOT_04")) && ((FISHING_SPOT_04_AMOUNT) == (FISHING_SPOT_04_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_04", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_04_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_04_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "HARBOUR_FISHING_SPOT_05")) && ((FISHING_SPOT_05_AMOUNT) == (FISHING_SPOT_05_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_05", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_05_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_05_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VILLAGE_FISHING_SPOT_06")) && ((FISHING_SPOT_06_AMOUNT) == (FISHING_SPOT_06_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_06", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_06_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_06_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VILLAGE_FISHING_SPOT_07")) && ((FISHING_SPOT_07_AMOUNT) == (FISHING_SPOT_07_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_07", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_07_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_07_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_FISHING_01")) && ((FISHING_SPOT_08_AMOUNT) == (FISHING_SPOT_08_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_08", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_08_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_08_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_FISHING_02")) && ((FISHING_SPOT_09_AMOUNT) == (FISHING_SPOT_09_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_09", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_09_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_09_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_FISHING_03")) && ((FISHING_SPOT_10_AMOUNT) == (FISHING_SPOT_10_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_10", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_10_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_10_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_FISHING_04")) && ((FISHING_SPOT_11_AMOUNT) == (FISHING_SPOT_11_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_11", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_11_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_11_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "P17_HAVEN_NOENTRY_KILLHERO")) && ((FISHING_SPOT_12_AMOUNT) == (FISHING_SPOT_12_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_12", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_12_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_12_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_FISHING_PLACE_02")) && ((FISHING_SPOT_13_AMOUNT) == (FISHING_SPOT_13_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_13", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_13_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_13_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_FISHING_PLACE_03")) && ((FISHING_SPOT_14_AMOUNT) == (FISHING_SPOT_14_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_14", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_14_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_14_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_FISHING_PLACE_04")) && ((FISHING_SPOT_15_AMOUNT) == (FISHING_SPOT_15_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_15", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_15_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_15_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART1_FISHING_PLACE_01")) && ((FISHING_SPOT_16_AMOUNT) == (FISHING_SPOT_16_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_16", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_16_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_16_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART1_FISHING_PLACE_02")) && ((FISHING_SPOT_17_AMOUNT) == (FISHING_SPOT_17_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_17", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_17_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_17_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART1_FISHING_PLACE_03")) && ((FISHING_SPOT_18_AMOUNT) == (FISHING_SPOT_18_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_18", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_18_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_18_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART1_FISHING_PLACE_04")) && ((FISHING_SPOT_19_AMOUNT) == (FISHING_SPOT_19_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_19", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_19_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_19_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_FISHING_PLACE_01")) && ((FISHING_SPOT_20_AMOUNT) == (FISHING_SPOT_20_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_20", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_20_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_20_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_FISHING_PLACE_02")) && ((FISHING_SPOT_21_AMOUNT) == (FISHING_SPOT_21_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_21", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_21_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_21_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_FISHING_PLACE_03")) && ((FISHING_SPOT_22_AMOUNT) == (FISHING_SPOT_22_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_22", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_22_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_22_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_FISHING_PLACE_04")) && ((FISHING_SPOT_23_AMOUNT) == (FISHING_SPOT_23_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_23", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_23_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_23_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART14_FISHING_PLACE_05")) && ((FISHING_SPOT_24_AMOUNT) == (FISHING_SPOT_24_MAX))) {
        MOB_CHANGEFOCUSNAME("FISHING_SPOT_24", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("FISHING_SPOT_24_PFX_01", FALSE, FALSE, FALSE, FALSE);
        CHANGEVOBCOLLISION("FISHING_SPOT_24_PFX_02", FALSE, FALSE, FALSE, FALSE);
        return;
    };
}

instance PC_FISHING_TRY(C_INFO) {
    NPC = 0xc3ab;
    CONDITION = PC_FISHING_CONDITION;
    INFORMATION = PC_FISHING_TRY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_FISHING;
}

func void PC_FISHING_TRY_INFO() {
    CURRENTCHANCE = HLP_RANDOM(100);
    if ((B_FISHING_CHECKWP()) == (TRUE)) {
        if ((CURRENTCHANCE) < (40)) {
            PRINTSCREENS(PRINT_NOFISH, -(1), -(1), FONT_SCREENSMALL, 2);
        } else if (((CURRENTCHANCE) >= (40)) && ((CURRENTCHANCE) < (75))) {
            CREATEINVITEMS(HERO, 0x84b4, 1);
            PRINTSCREENS(PRINT_ONEFISH, -(1), -(1), FONT_SCREENSMALL, 2);
        } else if (((CURRENTCHANCE) >= (75)) && ((CURRENTCHANCE) < (85))) {
            CREATEINVITEMS(HERO, 0x84b4, 2);
            PRINTSCREENS(PRINT_TWOFISH, -(1), -(1), FONT_SCREENSMALL, 2);
        } else if (((CURRENTCHANCE) >= (85)) && ((CURRENTCHANCE) < (95))) {
            CREATEINVITEMS(HERO, 0x8d28, 1);
            PRINTSCREENS(PRINT_FATFISH, -(1), -(1), FONT_SCREENSMALL, 2);
        } else if (((CURRENTCHANCE) >= (95)) && ((CURRENTCHANCE) < (99))) {
            CREATEINVITEMS(HERO, 0x84b4, 3);
            PRINTSCREENS(PRINT_THREEFISH, -(1), -(1), FONT_SCREENSMALL, 2);
        } else if ((CURRENTCHANCE) == (100)) {
            CREATEINVITEMS(HERO, 0x8d28, 2);
            PRINTSCREENS(PRINT_TWOFATFISH, -(1), -(1), FONT_SCREENSMALL, 2);
        };
    };
    B_FISHING_CHANGENAME();
    PRINTSCREENS(PRINT_NOTHINGLEFT, -(1), -(1), FONT_SCREENSMALL, 2);
    B_ENDPRODUCTIONDIALOG();
}

var int PC_FISHING_TRY_INFO.CURRENTCHANCE = 0;