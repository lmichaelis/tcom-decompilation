instance DIA_MIROH_EXIT(C_INFO) {
    NPC = 53253;
    NR = 999;
    CONDITION = DIA_MIROH_EXIT_CONDITION;
    INFORMATION = DIA_MIROH_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MIROH_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MIROH_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MIROH_SQ301_WEWON(C_INFO) {
    NPC = 53253;
    NR = 1;
    CONDITION = DIA_MIROH_SQ301_WEWON_CONDITION;
    INFORMATION = DIA_MIROH_SQ301_WEWON_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MIROH_SQ301_WEWON_CONDITION() {
    if ((SQ301_MIROHTALK) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MIROH_SQ301_WEWON_INFO() {
    SQ301_WORKERSGOHOME();
    if (!(NPC_ISDEAD(VLK_6357_NIVEL))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Miroh_SQ301_WeWon_03_01");
    };
    if (NPC_ISDEAD(VLK_6357_NIVEL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Miroh_SQ301_WeWon_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Miroh_SQ301_WeWon_03_03");
        AI_OUTPUT(OTHER, SELF, "DIA_Miroh_SQ301_WeWon_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Miroh_SQ301_WeWon_03_05");
    };
    SQ301_FINISHQUEST();
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(VLK_6358_MIROH, "TAVERN");
}

instance DIA_MIROH_Q504_FEEL(C_INFO) {
    NPC = 53253;
    NR = 90;
    CONDITION = DIA_MIROH_Q504_FEEL_CONDITION;
    INFORMATION = DIA_MIROH_Q504_FEEL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_MIROH_Q504_FEEL_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_SMALLTALK_02")) <= (2000)) && ((Q504_TAKEWORKERS) == (2))) && ((Q504_NIVELMIROHVOLFZACKE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MIROH_Q504_FEEL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Miroh_Q504_Feel_03_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_MIROH_PICKPOCKET(C_INFO) {
    NPC = 53253;
    NR = 900;
    CONDITION = DIA_MIROH_PICKPOCKET_CONDITION;
    INFORMATION = DIA_MIROH_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_MIROH_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MIROH_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(76059);
    INFO_ADDCHOICE(76059, DIALOG_BACK, 76063);
    INFO_ADDCHOICE(76059, DIALOG_PICKPOCKET, 76062);
}

func void DIA_MIROH_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 35980, 2);
        B_GIVEINVITEMS(SELF, OTHER, 35980, 2);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(76059);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(76059);
}

func void DIA_MIROH_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(76059);
}

