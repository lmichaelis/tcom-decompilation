const int MINING_SILVER_01_MAX = 5;
const int MINING_SILVER_02_MAX = 5;
const int MINING_SILVER_03_MAX = 5;
const int MINING_SILVER_04_MAX = 5;
const int MINING_SILVER_05_MAX = 5;
const int MINING_SILVER_06_MAX = 5;
const int MINING_SILVER_07_MAX = 5;
const int MINING_SILVER_08_MAX = 5;
const int MINING_SILVER_09_MAX = 5;
const int MINING_SILVER_10_MAX = 5;
const int MINING_SILVER_11_MAX = 5;
const int MINING_SILVER_12_MAX = 5;
const int MINING_SILVER_13_MAX = 5;
const int MINING_SILVER_14_MAX = 5;
const int MINING_SILVER_15_MAX = 5;
const int MINING_SILVER_16_MAX = 5;
const int MINING_SILVER_17_MAX = 5;
const int MINING_SILVER_18_MAX = 5;
const int MINING_SILVER_19_MAX = 5;
const int MINING_SILVER_20_MAX = 5;
const int MINING_SILVER_21_MAX = 5;
const int MINING_SILVER_22_MAX = 5;
const int MINING_SILVER_23_MAX = 5;
const int MINING_SILVER_24_MAX = 5;
const int MINING_SILVER_25_MAX = 5;
const int MINING_SILVER_26_MAX = 5;
const int MINING_SILVER_27_MAX = 5;
const int MINING_SILVER_28_MAX = 5;
const int MINING_SILVER_29_MAX = 5;
const int MINING_SILVER_30_MAX = 5;
const int MINING_SILVER_31_MAX = 5;
const int MINING_SILVER_32_MAX = 5;
const int MINING_SILVER_33_MAX = 5;
const int MINING_SILVER_34_MAX = 5;
const int MINING_SILVER_35_MAX = 5;
const int MINING_SILVER_36_MAX = 5;
const int MINING_SILVER_37_MAX = 5;
const int MINING_SILVER_38_MAX = 5;
var int MINING_SILVER_01_AMOUNT;
var int MINING_SILVER_02_AMOUNT;
var int MINING_SILVER_03_AMOUNT;
var int MINING_SILVER_04_AMOUNT;
var int MINING_SILVER_05_AMOUNT;
var int MINING_SILVER_06_AMOUNT;
var int MINING_SILVER_07_AMOUNT;
var int MINING_SILVER_08_AMOUNT;
var int MINING_SILVER_09_AMOUNT;
var int MINING_SILVER_10_AMOUNT;
var int MINING_SILVER_11_AMOUNT;
var int MINING_SILVER_12_AMOUNT;
var int MINING_SILVER_13_AMOUNT;
var int MINING_SILVER_14_AMOUNT;
var int MINING_SILVER_15_AMOUNT;
var int MINING_SILVER_16_AMOUNT;
var int MINING_SILVER_17_AMOUNT;
var int MINING_SILVER_18_AMOUNT;
var int MINING_SILVER_19_AMOUNT;
var int MINING_SILVER_20_AMOUNT;
var int MINING_SILVER_21_AMOUNT;
var int MINING_SILVER_22_AMOUNT;
var int MINING_SILVER_23_AMOUNT;
var int MINING_SILVER_24_AMOUNT;
var int MINING_SILVER_25_AMOUNT;
var int MINING_SILVER_26_AMOUNT;
var int MINING_SILVER_27_AMOUNT;
var int MINING_SILVER_28_AMOUNT;
var int MINING_SILVER_29_AMOUNT;
var int MINING_SILVER_30_AMOUNT;
var int MINING_SILVER_31_AMOUNT;
var int MINING_SILVER_32_AMOUNT;
var int MINING_SILVER_33_AMOUNT;
var int MINING_SILVER_34_AMOUNT;
var int MINING_SILVER_35_AMOUNT;
var int MINING_SILVER_36_AMOUNT;
var int MINING_SILVER_37_AMOUNT;
var int MINING_SILVER_38_AMOUNT;
var int SILVERCOUNTER_MINING;
func int B_SILVERMINE_CHECKWP() {
    if ((CURRENTLEVEL) == (ARCHOLOS_SILVERMINE_ZEN)) {
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_01")) && ((MINING_SILVER_01_MAX) > (MINING_SILVER_01_AMOUNT))) {
            MINING_SILVER_01_AMOUNT = (MINING_SILVER_01_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_02")) && ((MINING_SILVER_02_MAX) > (MINING_SILVER_02_AMOUNT))) {
            MINING_SILVER_02_AMOUNT = (MINING_SILVER_02_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_03")) && ((MINING_SILVER_03_MAX) > (MINING_SILVER_03_AMOUNT))) {
            MINING_SILVER_03_AMOUNT = (MINING_SILVER_03_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_04")) && ((MINING_SILVER_04_MAX) > (MINING_SILVER_04_AMOUNT))) {
            MINING_SILVER_04_AMOUNT = (MINING_SILVER_04_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_05")) && ((MINING_SILVER_05_MAX) > (MINING_SILVER_05_AMOUNT))) {
            MINING_SILVER_05_AMOUNT = (MINING_SILVER_05_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_06")) && ((MINING_SILVER_06_MAX) > (MINING_SILVER_06_AMOUNT))) {
            MINING_SILVER_06_AMOUNT = (MINING_SILVER_06_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_07")) && ((MINING_SILVER_07_MAX) > (MINING_SILVER_07_AMOUNT))) {
            MINING_SILVER_07_AMOUNT = (MINING_SILVER_07_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_08")) && ((MINING_SILVER_08_MAX) > (MINING_SILVER_08_AMOUNT))) {
            MINING_SILVER_08_AMOUNT = (MINING_SILVER_08_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_09")) && ((MINING_SILVER_09_MAX) > (MINING_SILVER_09_AMOUNT))) {
            MINING_SILVER_09_AMOUNT = (MINING_SILVER_09_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_10")) && ((MINING_SILVER_10_MAX) > (MINING_SILVER_10_AMOUNT))) {
            MINING_SILVER_10_AMOUNT = (MINING_SILVER_10_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_11")) && ((MINING_SILVER_11_MAX) > (MINING_SILVER_11_AMOUNT))) {
            MINING_SILVER_11_AMOUNT = (MINING_SILVER_11_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_12")) && ((MINING_SILVER_12_MAX) > (MINING_SILVER_12_AMOUNT))) {
            MINING_SILVER_12_AMOUNT = (MINING_SILVER_12_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_13")) && ((MINING_SILVER_13_MAX) > (MINING_SILVER_13_AMOUNT))) {
            MINING_SILVER_13_AMOUNT = (MINING_SILVER_13_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_14")) && ((MINING_SILVER_14_MAX) > (MINING_SILVER_14_AMOUNT))) {
            MINING_SILVER_14_AMOUNT = (MINING_SILVER_14_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_15")) && ((MINING_SILVER_15_MAX) > (MINING_SILVER_15_AMOUNT))) {
            MINING_SILVER_15_AMOUNT = (MINING_SILVER_15_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_16")) && ((MINING_SILVER_16_MAX) > (MINING_SILVER_16_AMOUNT))) {
            MINING_SILVER_16_AMOUNT = (MINING_SILVER_16_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_17")) && ((MINING_SILVER_17_MAX) > (MINING_SILVER_17_AMOUNT))) {
            MINING_SILVER_17_AMOUNT = (MINING_SILVER_17_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_18")) && ((MINING_SILVER_18_MAX) > (MINING_SILVER_18_AMOUNT))) {
            MINING_SILVER_18_AMOUNT = (MINING_SILVER_18_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_19")) && ((MINING_SILVER_19_MAX) > (MINING_SILVER_19_AMOUNT))) {
            MINING_SILVER_19_AMOUNT = (MINING_SILVER_19_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_20")) && ((MINING_SILVER_20_MAX) > (MINING_SILVER_20_AMOUNT))) {
            MINING_SILVER_20_AMOUNT = (MINING_SILVER_20_AMOUNT) + (1);
            return TRUE;
        };
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_01")) && ((MINING_SILVER_21_MAX) > (MINING_SILVER_21_AMOUNT))) {
            MINING_SILVER_21_AMOUNT = (MINING_SILVER_21_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_02")) && ((MINING_SILVER_22_MAX) > (MINING_SILVER_22_AMOUNT))) {
            MINING_SILVER_22_AMOUNT = (MINING_SILVER_22_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_03")) && ((MINING_SILVER_23_MAX) > (MINING_SILVER_23_AMOUNT))) {
            MINING_SILVER_23_AMOUNT = (MINING_SILVER_23_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_04")) && ((MINING_SILVER_24_MAX) > (MINING_SILVER_24_AMOUNT))) {
            MINING_SILVER_24_AMOUNT = (MINING_SILVER_24_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_05")) && ((MINING_SILVER_25_MAX) > (MINING_SILVER_25_AMOUNT))) {
            MINING_SILVER_25_AMOUNT = (MINING_SILVER_25_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_06")) && ((MINING_SILVER_26_MAX) > (MINING_SILVER_26_AMOUNT))) {
            MINING_SILVER_26_AMOUNT = (MINING_SILVER_26_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_07")) && ((MINING_SILVER_27_MAX) > (MINING_SILVER_27_AMOUNT))) {
            MINING_SILVER_27_AMOUNT = (MINING_SILVER_27_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_SILVER_01")) && ((MINING_SILVER_28_MAX) > (MINING_SILVER_28_AMOUNT))) {
            MINING_SILVER_28_AMOUNT = (MINING_SILVER_28_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_SILVER_02")) && ((MINING_SILVER_29_MAX) > (MINING_SILVER_29_AMOUNT))) {
            MINING_SILVER_29_AMOUNT = (MINING_SILVER_29_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_SILVER_01")) && ((MINING_SILVER_30_MAX) > (MINING_SILVER_30_AMOUNT))) {
            MINING_SILVER_30_AMOUNT = (MINING_SILVER_30_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_SILVER_02")) && ((MINING_SILVER_31_MAX) > (MINING_SILVER_31_AMOUNT))) {
            MINING_SILVER_31_AMOUNT = (MINING_SILVER_31_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART7_SILVER_01")) && ((MINING_SILVER_32_MAX) > (MINING_SILVER_32_AMOUNT))) {
            MINING_SILVER_32_AMOUNT = (MINING_SILVER_32_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART7_SILVER_02")) && ((MINING_SILVER_33_MAX) > (MINING_SILVER_33_AMOUNT))) {
            MINING_SILVER_33_AMOUNT = (MINING_SILVER_33_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART5_SILVER_01")) && ((MINING_SILVER_34_MAX) > (MINING_SILVER_34_AMOUNT))) {
            MINING_SILVER_34_AMOUNT = (MINING_SILVER_34_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART5_SILVER_02")) && ((MINING_SILVER_35_MAX) > (MINING_SILVER_35_AMOUNT))) {
            MINING_SILVER_35_AMOUNT = (MINING_SILVER_35_AMOUNT) + (1);
            return TRUE;
        };
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN)) {
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VOLFZACKE_SILVERMOB_01")) && ((MINING_SILVER_36_MAX) > (MINING_SILVER_36_AMOUNT))) {
            MINING_SILVER_36_AMOUNT = (MINING_SILVER_36_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VOLFZACKE_SILVERMOB_02")) && ((MINING_SILVER_37_MAX) > (MINING_SILVER_37_AMOUNT))) {
            MINING_SILVER_37_AMOUNT = (MINING_SILVER_37_AMOUNT) + (1);
            return TRUE;
        };
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VOLFZACKE_SILVERMOB_03")) && ((MINING_SILVER_38_MAX) > (MINING_SILVER_38_AMOUNT))) {
            MINING_SILVER_38_AMOUNT = (MINING_SILVER_38_AMOUNT) + (1);
            return TRUE;
        };
    };
    return FALSE;
}

func void MINING_SILVER_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_MINING_SILVER;
        AI_PROCESSINFOS(HER);
        if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
            if ((HERO_HACKCHANCE) < (25)) {
                EXTRACTION_TEACHSOMEMORE_LOGENTRY();
            };
        };
    };
}

func void MINING_SILVER_CHANGENAME() {
    if ((CURRENTLEVEL) == (ARCHOLOS_SILVERMINE_ZEN)) {
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_01")) && ((MINING_SILVER_01_AMOUNT) == (MINING_SILVER_01_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_02")) && ((MINING_SILVER_02_AMOUNT) == (MINING_SILVER_02_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_03")) && ((MINING_SILVER_03_AMOUNT) == (MINING_SILVER_03_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_04")) && ((MINING_SILVER_04_AMOUNT) == (MINING_SILVER_04_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_05")) && ((MINING_SILVER_05_AMOUNT) == (MINING_SILVER_05_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_06")) && ((MINING_SILVER_06_AMOUNT) == (MINING_SILVER_06_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_07")) && ((MINING_SILVER_07_AMOUNT) == (MINING_SILVER_07_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_08")) && ((MINING_SILVER_08_AMOUNT) == (MINING_SILVER_08_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_09")) && ((MINING_SILVER_09_AMOUNT) == (MINING_SILVER_09_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_10")) && ((MINING_SILVER_10_AMOUNT) == (MINING_SILVER_10_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_11")) && ((MINING_SILVER_11_AMOUNT) == (MINING_SILVER_11_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_12")) && ((MINING_SILVER_12_AMOUNT) == (MINING_SILVER_12_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_13")) && ((MINING_SILVER_13_AMOUNT) == (MINING_SILVER_13_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_14")) && ((MINING_SILVER_14_AMOUNT) == (MINING_SILVER_14_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_15")) && ((MINING_SILVER_15_AMOUNT) == (MINING_SILVER_15_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_16")) && ((MINING_SILVER_16_AMOUNT) == (MINING_SILVER_16_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_17")) && ((MINING_SILVER_17_AMOUNT) == (MINING_SILVER_17_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_18")) && ((MINING_SILVER_18_AMOUNT) == (MINING_SILVER_18_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_19")) && ((MINING_SILVER_19_AMOUNT) == (MINING_SILVER_19_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "SILVERMINE_SILVERMOB_20")) && ((MINING_SILVER_20_AMOUNT) == (MINING_SILVER_20_MAX))) {
            MOB_CHANGEFOCUSNAME("SILVERMINE_MINING_SILVER_20", "MOBNAME_GOLDMOB_EMPTY");
        };
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_01")) && ((MINING_SILVER_21_AMOUNT) == (MINING_SILVER_21_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_02")) && ((MINING_SILVER_22_AMOUNT) == (MINING_SILVER_22_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_03")) && ((MINING_SILVER_23_AMOUNT) == (MINING_SILVER_23_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_04")) && ((MINING_SILVER_24_AMOUNT) == (MINING_SILVER_24_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_05")) && ((MINING_SILVER_25_AMOUNT) == (MINING_SILVER_25_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_06")) && ((MINING_SILVER_26_AMOUNT) == (MINING_SILVER_26_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART16_SILVER_07")) && ((MINING_SILVER_27_AMOUNT) == (MINING_SILVER_27_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_SILVER_01")) && ((MINING_SILVER_28_AMOUNT) == (MINING_SILVER_28_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART4_SILVER_02")) && ((MINING_SILVER_29_AMOUNT) == (MINING_SILVER_29_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_SILVER_01")) && ((MINING_SILVER_30_AMOUNT) == (MINING_SILVER_30_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART15_SILVER_02")) && ((MINING_SILVER_31_AMOUNT) == (MINING_SILVER_31_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART7_SILVER_01")) && ((MINING_SILVER_32_AMOUNT) == (MINING_SILVER_32_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART7_SILVER_02")) && ((MINING_SILVER_33_AMOUNT) == (MINING_SILVER_33_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART5_SILVER_01")) && ((MINING_SILVER_34_AMOUNT) == (MINING_SILVER_34_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "PART5_SILVER_02")) && ((MINING_SILVER_35_AMOUNT) == (MINING_SILVER_35_MAX))) {
            MOB_CHANGEFOCUSNAME("MINING_SILVER_15", "MOBNAME_GOLDMOB_EMPTY");
        };
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN)) {
        if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VOLFZACKE_SILVERMOB_01")) && ((MINING_SILVER_36_AMOUNT) == (MINING_SILVER_36_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VOLFZACKE_SILVERMOB_02")) && ((MINING_SILVER_37_AMOUNT) == (MINING_SILVER_37_MAX))) {
        } else if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), "VOLFZACKE_SILVERMOB_03")) && ((MINING_SILVER_38_AMOUNT) == (MINING_SILVER_38_MAX))) {
            MOB_CHANGEFOCUSNAME("MINING_VOLFZACKE_SILVER_03", "MOBNAME_GOLDMOB_EMPTY");
        };
    };
}

instance PC_MINING_SILVER_END(C_INFO) {
    NPC = 50091;
    NR = 999;
    CONDITION = PC_MINING_SILVER_END_CONDITION;
    INFORMATION = PC_MINING_SILVER_END_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int PC_MINING_SILVER_END_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_MINING_SILVER)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_MINING_SILVER_END_INFO() {
    B_ENDPRODUCTIONDIALOG();
}

instance PC_MINING_SILVER_HOUR(C_INFO) {
    NPC = 50091;
    NR = 2;
    CONDITION = PC_MINING_SILVER_HOUR_CONDITION;
    INFORMATION = PC_MINING_SILVER_HOUR_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_DIGALITTLE;
}

func int PC_MINING_SILVER_HOUR_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_MINING_SILVER)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_MINING_SILVER_HOUR_INFO() {
    var int MULTINUGGET;
    var int CURRENTCHANCE;
    CURRENTCHANCE = HLP_RANDOM(100);
    MULTINUGGET = HLP_RANDOM(10);
    if ((B_SILVERMINE_CHECKWP()) == (TRUE)) {
        if ((CURRENTCHANCE) <= (HERO_HACKCHANCE)) {
            if ((CURRENTLEVEL) == (ARCHOLOS_SILVERMINE_ZEN)) {
                if (((SILVERCOUNTER_MINING) >= (20)) && ((MULTINUGGET) >= (8))) {
                    CREATEINVITEMS(HERO, 36939, 2);
                    PRINTSCREENS(PRINT_SILVERDIGV2, -(1), -(1), FONT_SCREENSMALL, 2);
                    SILVERCOUNTER_MINING = 0;
                } else if (((SILVERCOUNTER_MINING) >= (7)) && ((MULTINUGGET) >= (5))) {
                    CREATEINVITEMS(HERO, 36939, 1);
                    PRINTSCREENS(PRINT_SILVERDIGV1, -(1), -(1), FONT_SCREENSMALL, 2);
                    SILVERCOUNTER_MINING = (SILVERCOUNTER_MINING) + (1);
                } else {
                    CREATEINVITEMS(HERO, 36939, 1);
                    PRINTSCREENS(PRINT_SILVERDIGV1, -(1), -(1), FONT_SCREENSMALL, 2);
                    SILVERCOUNTER_MINING = (SILVERCOUNTER_MINING) + (1);
                };
                ACH_16_SILVER = TRUE;
            } else if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
                if (((SILVERCOUNTER_MINING) >= (20)) && ((MULTINUGGET) >= (8))) {
                    CREATEINVITEMS(HERO, 36939, 3);
                    PRINTSCREENS(PRINT_SILVERDIGV3, -(1), -(1), FONT_SCREENSMALL, 2);
                    SILVERCOUNTER_MINING = 0;
                } else if (((SILVERCOUNTER_MINING) >= (7)) && ((MULTINUGGET) >= (5))) {
                    CREATEINVITEMS(HERO, 36939, 2);
                    PRINTSCREENS(PRINT_SILVERDIGV2, -(1), -(1), FONT_SCREENSMALL, 2);
                    SILVERCOUNTER_MINING = (SILVERCOUNTER_MINING) + (1);
                } else {
                    CREATEINVITEMS(HERO, 36939, 1);
                    PRINTSCREENS(PRINT_SILVERDIGV1, -(1), -(1), FONT_SCREENSMALL, 2);
                    SILVERCOUNTER_MINING = (SILVERCOUNTER_MINING) + (1);
                };
                ACH_16_SILVER = TRUE;
            } else if ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN)) {
                if (((SILVERCOUNTER_MINING) >= (20)) && ((MULTINUGGET) >= (8))) {
                    CREATEINVITEMS(HERO, 36939, 3);
                    PRINTSCREENS(PRINT_SILVERDIGV3, -(1), -(1), FONT_SCREENSMALL, 2);
                    SILVERCOUNTER_MINING = 0;
                } else if (((SILVERCOUNTER_MINING) >= (7)) && ((MULTINUGGET) >= (5))) {
                    CREATEINVITEMS(HERO, 36939, 2);
                    PRINTSCREENS(PRINT_SILVERDIGV2, -(1), -(1), FONT_SCREENSMALL, 2);
                    SILVERCOUNTER_MINING = (SILVERCOUNTER_MINING) + (1);
                } else {
                    CREATEINVITEMS(HERO, 36939, 1);
                    PRINTSCREENS(PRINT_SILVERDIGV1, -(1), -(1), FONT_SCREENSMALL, 2);
                    SILVERCOUNTER_MINING = (SILVERCOUNTER_MINING) + (1);
                };
                ACH_16_SILVER = TRUE;
            };
        } else {
            PRINTSCREENS(PRINT_SILVERDIGGING, -(1), -(1), FONT_SCREENSMALL, 2);
            B_TEACHEXTRACTION_MYSELF();
        };
    };
    MINING_SILVER_CHANGENAME();
    PRINTSCREENS(PRINT_NOTHINGLEFT, -(1), -(1), FONT_SCREENSMALL, 2);
    B_ENDPRODUCTIONDIALOG();
}

