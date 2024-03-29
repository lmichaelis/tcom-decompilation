instance DIA_FEMALEDRUNKARD_EXIT(C_INFO) {
    NPC = 53518;
    NR = 999;
    CONDITION = DIA_FEMALEDRUNKARD_EXIT_CONDITION;
    INFORMATION = DIA_FEMALEDRUNKARD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FEMALEDRUNKARD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FEMALEDRUNKARD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FEMALEDRUNKARD_DRUNKASHECK(C_INFO) {
    NPC = 53518;
    NR = 1;
    CONDITION = DIA_FEMALEDRUNKARD_DRUNKASHECK_CONDITION;
    INFORMATION = DIA_FEMALEDRUNKARD_DRUNKASHECK_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FEMALEDRUNKARD_DRUNKASHECK_CONDITION() {
    return TRUE;
}

func void DIA_FEMALEDRUNKARD_DRUNKASHECK_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_FemaleDrunkard_DrunkAsHeck_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_FemaleDrunkard_DrunkAsHeck_03_02");
}

instance DIA_FEMALEDRUNKARD_WINE(C_INFO) {
    NPC = 53518;
    NR = 2;
    CONDITION = DIA_FEMALEDRUNKARD_WINE_CONDITION;
    INFORMATION = DIA_FEMALEDRUNKARD_WINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Here's the wine.";
}

func int DIA_FEMALEDRUNKARD_WINE_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 72595)) && ((NPC_HASITEMS(OTHER, 33988)) >= (1))) && (!(NPC_KNOWSINFO(OTHER, 72601)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FEMALEDRUNKARD_WINE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_FemaleDrunkard_Wine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_FemaleDrunkard_Wine_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_FemaleDrunkard_Wine_03_03");
    NPC_EXCHANGEROUTINE(SELF, TOT);
    CREATEINVITEMS(SELF, 34203, EVENT_DRUNKLADY01);
    B_GIVEINVITEMS(OTHER, SELF, 33988, 1);
    B_GIVEPLAYERXP(XP_EVENT_DRUNKLADY_01);
    B_GIVEINVITEMS(SELF, OTHER, 34203, EVENT_DRUNKLADY01);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FEMALEDRUNKARD_NOTWINE(C_INFO) {
    NPC = 53518;
    NR = 2;
    CONDITION = DIA_FEMALEDRUNKARD_NOTWINE_CONDITION;
    INFORMATION = DIA_FEMALEDRUNKARD_NOTWINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I don't think you should drink anymore.";
}

func int DIA_FEMALEDRUNKARD_NOTWINE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 72595)) && (!(NPC_KNOWSINFO(OTHER, 72598)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FEMALEDRUNKARD_NOTWINE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_FemaleDrunkard_NotWine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_FemaleDrunkard_NotWine_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_FemaleDrunkard_NotWine_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_FemaleDrunkard_NotWine_03_04");
    NPC_EXCHANGEROUTINE(SELF, TOT);
    CREATEINVITEMS(SELF, 34203, EVENT_DRUNKLADY02);
    B_GIVEINVITEMS(SELF, OTHER, 34203, EVENT_DRUNKLADY02);
    B_GIVEPLAYERXP(XP_EVENT_DRUNKLADY_02);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FEMALEDRUNKARD_AMBIENT(C_INFO) {
    NPC = 53518;
    NR = 3;
    CONDITION = DIA_FEMALEDRUNKARD_AMBIENT_CONDITION;
    INFORMATION = DIA_FEMALEDRUNKARD_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_FEMALEDRUNKARD_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 72598)) || (NPC_KNOWSINFO(OTHER, 72601))) {
        if (NPC_ISINSTATE(SELF, 61599)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_FEMALEDRUNKARD_AMBIENT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_FemaleDrunkard_Ambient_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

