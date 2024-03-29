instance DIA_13370_HOBO_EXIT(C_INFO) {
    NPC = 53115;
    NR = 999;
    CONDITION = DIA_13370_HOBO_EXIT_CONDITION;
    INFORMATION = DIA_13370_HOBO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13370_HOBO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13370_HOBO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13370_HOBO_POORRECIPE(C_INFO) {
    NPC = 53115;
    NR = 1;
    CONDITION = DIA_13370_HOBO_POORRECIPE_CONDITION;
    INFORMATION = DIA_13370_HOBO_POORRECIPE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13370_HOBO_POORRECIPE_CONDITION() {
    return TRUE;
}

func void DIA_13370_HOBO_POORRECIPE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_13370_Hobo_PoorRecipe_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13370_Hobo_PoorRecipe_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_13370_Hobo_PoorRecipe_03_03");
}

instance DIA_13370_HOBO_ITISNOTATRICK(C_INFO) {
    NPC = 53115;
    NR = 2;
    CONDITION = DIA_13370_HOBO_ITISNOTATRICK_CONDITION;
    INFORMATION = DIA_13370_HOBO_ITISNOTATRICK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Sure, hold it! (Give 50 GP)";
}

func int DIA_13370_HOBO_ITISNOTATRICK_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 72637)) && ((PLAYER_TALENT_COOKING[61]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13370_HOBO_ITISNOTATRICK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13370_Hobo_ItIsNotATrick_15_01");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (EVENT_GOLDFORWEEDRECIPESCAMER)) {
        B_GIVEINVITEMS(OTHER, SELF, 34203, EVENT_GOLDFORWEEDRECIPESCAMER);
        PLAYER_TALENT_COOKING[61] = TRUE;
        B_GIVEPLAYERXP(XP_EVENT_HOBO_ITISNOTATRICK);
        AI_OUTPUT(SELF, OTHER, "DIA_13370_Hobo_ItIsNotATrick_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_13370_Hobo_ItIsNotATrick_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_13370_Hobo_ItIsNotATrick_03_04");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_13370_Hobo_ItIsNotATrick_03_05");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13370_HOBO_ITISSCAM(C_INFO) {
    NPC = 53115;
    NR = 3;
    CONDITION = DIA_13370_HOBO_ITISSCAM_CONDITION;
    INFORMATION = DIA_13370_HOBO_ITISSCAM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Doesn't sound very tasty.";
}

func int DIA_13370_HOBO_ITISSCAM_CONDITION() {
    if ((PLAYER_TALENT_COOKING[61]) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13370_HOBO_ITISSCAM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13370_Hobo_ItIsScam_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13370_Hobo_ItIsScam_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_13370_Hobo_ItIsScam_03_03");
}

instance DIA_13370_HOBO_YESITISSCAM(C_INFO) {
    NPC = 53115;
    NR = 4;
    CONDITION = DIA_13370_HOBO_YESITISSCAM_CONDITION;
    INFORMATION = DIA_13370_HOBO_YESITISSCAM_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I want to buy weeds. (Give 20 GP)";
}

func int DIA_13370_HOBO_YESITISSCAM_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 72643)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13370_HOBO_YESITISSCAM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13370_Hobo_YesItIsScam_15_01");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (EVENT_GOLDFORWEEDSCAMER)) {
        NPC_REMOVEINVITEMS(SELF, 34203, EVENT_GOLDFORWEEDSCAMER);
        AI_OUTPUT(SELF, OTHER, "DIA_13370_Hobo_YesItIsScam_03_02");
        B_GIVEINVITEMS(OTHER, SELF, 34203, EVENT_GOLDFORWEEDSCAMER);
        CREATEINVITEMS(SELF, 34268, 3);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_13370_Hobo_YesItIsScam_03_03");
}

instance DIA_13370_HOBO_FUCKITISSCAM(C_INFO) {
    NPC = 53115;
    NR = 5;
    CONDITION = DIA_13370_HOBO_FUCKITISSCAM_CONDITION;
    INFORMATION = DIA_13370_HOBO_FUCKITISSCAM_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_DRIVEAWAY;
}

func int DIA_13370_HOBO_FUCKITISSCAM_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 72643)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13370_HOBO_FUCKITISSCAM_INFO() {
    AI_DRAWWEAPON(OTHER);
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_RUDEBYE2");
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_13370_HOBO_GETTHEFUCKOUT(C_INFO) {
    NPC = 53115;
    NR = 1;
    CONDITION = DIA_13370_HOBO_GETTHEFUCKOUT_CONDITION;
    INFORMATION = DIA_13370_HOBO_GETTHEFUCKOUT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13370_HOBO_GETTHEFUCKOUT_CONDITION() {
    if ((SELF.AIVAR[66]) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13370_HOBO_GETTHEFUCKOUT_INFO() {
    DIA_13370_HOBO_FUCKITISSCAM_INFO();
}

