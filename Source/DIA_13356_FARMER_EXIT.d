instance DIA_13356_FARMER_EXIT(C_INFO) {
    NPC = 57746;
    NR = 999;
    CONDITION = DIA_13356_FARMER_EXIT_CONDITION;
    INFORMATION = DIA_13356_FARMER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13356_FARMER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13356_FARMER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13356_FARMER_NICETOMEATYOU(C_INFO) {
    NPC = 57746;
    NR = 1;
    CONDITION = DIA_13356_FARMER_NICETOMEATYOU_CONDITION;
    INFORMATION = DIA_13356_FARMER_NICETOMEATYOU_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13356_FARMER_NICETOMEATYOU_CONDITION() {
    return TRUE;
}

func void DIA_13356_FARMER_NICETOMEATYOU_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13356_Farmer_NiceToMeatYou_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_13356_Farmer_NiceToMeatYou_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_13356_Farmer_NiceToMeatYou_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_13356_Farmer_NiceToMeatYou_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_13356_Farmer_NiceToMeatYou_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_13356_Farmer_NiceToMeatYou_03_06");
    NPC_EXCHANGEROUTINE(SELF, TOT);
    INFO_CLEARCHOICES(87553);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (EVENT_ALMOSTFREEMEAT)) {
        INFO_ADDCHOICE(87553, "I'll take that meat.", 87556);
    };
    INFO_ADDCHOICE(87553, "Better share with your neighbors.", 87557);
}

func void DIA_13356_FARMER_MEATYES() {
    AI_OUTPUT(OTHER, SELF, "DIA_13356_Farmer_MeatYes_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 34203, EVENT_ALMOSTFREEMEAT);
    AI_OUTPUT(SELF, OTHER, "DIA_13356_Farmer_MeatYes_03_02");
    B_GIVEPLAYERXP(XP_SECRET_ENIGMATICWANDERER_WRONGWAY);
    CREATEINVITEMS(SELF, 36411, 6);
    B_GIVEINVITEMS(SELF, OTHER, 36411, 6);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_13356_FARMER_MEATNO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13356_Farmer_MeatNo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13356_Farmer_MeatNo_03_02");
    B_GIVEPLAYERXP(XP_SECRET_ENIGMATICWANDERER_WRONGPLACE);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13356_FARMER_MYPOORSHEEP(C_INFO) {
    NPC = 57746;
    NR = 4;
    CONDITION = DIA_13356_FARMER_MYPOORSHEEP_CONDITION;
    INFORMATION = DIA_13356_FARMER_MYPOORSHEEP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_13356_FARMER_MYPOORSHEEP_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 87553)) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13356_FARMER_MYPOORSHEEP_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13356_Farmer_MyPoorSheep_03_03");
    AI_STOPPROCESSINFOS(SELF);
}

