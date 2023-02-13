instance DIA_NIVEL_EXIT(C_INFO) {
    NPC = 53242;
    NR = 999;
    CONDITION = DIA_NIVEL_EXIT_CONDITION;
    INFORMATION = DIA_NIVEL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NIVEL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NIVEL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NIVEL_SQ301_WEWON(C_INFO) {
    NPC = 53242;
    NR = 1;
    CONDITION = DIA_NIVEL_SQ301_WEWON_CONDITION;
    INFORMATION = DIA_NIVEL_SQ301_WEWON_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NIVEL_SQ301_WEWON_CONDITION() {
    if ((SQ301_NIVELTALK) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIVEL_SQ301_WEWON_INFO() {
    SQ301_WORKERSGOHOME();
    AI_OUTPUT(SELF, OTHER, "DIA_Nivel_SQ301_WeWon_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Nivel_SQ301_WeWon_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nivel_SQ301_WeWon_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nivel_SQ301_WeWon_03_04");
    INFO_CLEARCHOICES(76036);
    INFO_ADDCHOICE(76036, "We'll live to see.", 76039);
    INFO_ADDCHOICE(76036, "As soon as I hear about something, I'll let you know.", 76041);
}

func void DIA_NIVEL_SQ301_WEWON_WEWILLSEE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nivel_SQ301_WeWon_WeWillSee_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nivel_SQ301_WeWon_WeWillSee_03_02");
    if (HLP_ISVALIDNPC(VLK_6358_MIROH)) {
        if (!(NPC_ISDEAD(VLK_6358_MIROH))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Nivel_SQ301_WeWon_WeWillSee_03_03");
        };
    };
    NPC_EXCHANGEROUTINE(VLK_6357_NIVEL, "WEWON");
    SQ301_FINISHQUEST();
    INFO_CLEARCHOICES(76036);
}

var int Q506_NIVEL_TELL;
func void DIA_NIVEL_SQ301_WEWON_OK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nivel_SQ301_WeWon_Ok_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nivel_SQ301_WeWon_Ok_03_02");
    Q506_NIVEL_TELL = TRUE;
    if (HLP_ISVALIDNPC(VLK_6358_MIROH)) {
        if (!(NPC_ISDEAD(VLK_6358_MIROH))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Nivel_SQ301_WeWon_Ok_03_03");
        };
    };
    NPC_EXCHANGEROUTINE(VLK_6357_NIVEL, "WEWON");
    SQ301_FINISHQUEST();
    INFO_CLEARCHOICES(76036);
}

instance DIA_NIVEL_Q504_FEEL(C_INFO) {
    NPC = 53242;
    NR = 90;
    CONDITION = DIA_NIVEL_Q504_FEEL_CONDITION;
    INFORMATION = DIA_NIVEL_Q504_FEEL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_NIVEL_Q504_FEEL_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_SMALLTALK_01")) <= (2000)) && ((Q504_TAKEWORKERS) == (2))) && ((Q504_NIVELMIROHVOLFZACKE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIVEL_Q504_FEEL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Nivel_Q504_Feel_03_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_NIVEL_PICKPOCKET(C_INFO) {
    NPC = 53242;
    NR = 900;
    CONDITION = DIA_NIVEL_PICKPOCKET_CONDITION;
    INFORMATION = DIA_NIVEL_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_NIVEL_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIVEL_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(76045);
    INFO_ADDCHOICE(76045, DIALOG_BACK, 76049);
    INFO_ADDCHOICE(76045, DIALOG_PICKPOCKET, 76048);
}

func void DIA_NIVEL_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(76045);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(76045);
}

func void DIA_NIVEL_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(76045);
}

