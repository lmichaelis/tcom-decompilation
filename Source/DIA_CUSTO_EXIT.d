instance DIA_CUSTO_EXIT(C_INFO) {
    NPC = 56612;
    NR = 999;
    CONDITION = DIA_CUSTO_EXIT_CONDITION;
    INFORMATION = DIA_CUSTO_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CUSTO_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CUSTO_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CUSTO_ABOUTFRED(C_INFO) {
    NPC = 56612;
    NR = 1;
    CONDITION = DIA_CUSTO_ABOUTFRED_CONDITION;
    INFORMATION = DIA_CUSTO_ABOUTFRED_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Novice Fred got himself into trouble.";
}

func int DIA_CUSTO_ABOUTFRED_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 80416)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CUSTO_ABOUTFRED_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Custo_AboutFred_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Custo_AboutFred_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Custo_AboutFred_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Custo_AboutFred_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Custo_AboutFred_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Custo_AboutFred_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Custo_AboutFred_03_07");
}

instance DIA_CUSTO_HELPFREDPLEASE(C_INFO) {
    NPC = 56612;
    NR = 2;
    CONDITION = DIA_CUSTO_HELPFREDPLEASE_CONDITION;
    INFORMATION = DIA_CUSTO_HELPFREDPLEASE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Then will you help him?";
}

func int DIA_CUSTO_HELPFREDPLEASE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 80045)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void CUSTO_TELEPORTNOVIZE() {
    PRINTD("Teleport Fred");
    B_STARTOTHERROUTINE(NOV_13684_FRED, "SCARED");
    NPC_REFRESH(NOV_13684_FRED);
    TELEPORTNPCTOWP(56583, "PART8_MONASTERY_SCAREDFRED");
    AI_TELEPORTALWAYS(NOV_13684_FRED, "PART8_MONASTERY_SCAREDFRED", TRUE);
}

func void DIA_CUSTO_HELPFREDPLEASE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Custo_HelpFredPlease_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Custo_HelpFredPlease_03_02");
    B_STOPLOOKAT(SELF);
    B_STANDUP();
    AI_PLAYANI(SELF, "T_PRACTICEMAGIC3");
    AI_FUNCTION(SELF, 80050);
    AI_WAIT(HERO, 1073741824);
    AI_OUTPUT(SELF, OTHER, "DIA_Custo_HelpFredPlease_03_03");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CUSTO_HELLO(C_INFO) {
    NPC = 56612;
    NR = 1;
    CONDITION = DIA_CUSTO_HELLO_CONDITION;
    INFORMATION = DIA_CUSTO_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Hello.";
}

func int DIA_CUSTO_HELLO_CONDITION() {
    if (!(NPC_KNOWSINFO(OTHER, 80045))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CUSTO_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_Hello2");
    AI_OUTPUT(SELF, OTHER, "DIA_Custo_Hello_03_01");
}

instance DIA_CUSTO_AMBIENT(C_INFO) {
    NPC = 56612;
    NR = 990;
    CONDITION = DIA_CUSTO_AMBIENT_CONDITION;
    INFORMATION = DIA_CUSTO_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_CUSTO_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 80052)) || (NPC_KNOWSINFO(OTHER, 80045))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CUSTO_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if (!(NPC_KNOWSINFO(OTHER, 80048))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Custo_Ambient_03_01");
    };
    if (NPC_KNOWSINFO(OTHER, 80048)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Custo_Ambient_03_02");
    };
}

instance DIA_CUSTO_ABOUTKLOSTER(C_INFO) {
    NPC = 56612;
    NR = 1;
    CONDITION = DIA_CUSTO_ABOUTKLOSTER_CONDITION;
    INFORMATION = DIA_CUSTO_ABOUTKLOSTER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What can you tell me about the monastery?";
}

func int DIA_CUSTO_ABOUTKLOSTER_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 80052)) || (NPC_KNOWSINFO(OTHER, 80045))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CUSTO_ABOUTKLOSTER_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutKloster");
    AI_OUTPUT(SELF, OTHER, "DIA_Custo_AboutKloster_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Custo_AboutKloster_03_02");
}

instance DIA_CUSTO_HOWDIDYOUGETHERE(C_INFO) {
    NPC = 56612;
    NR = 1;
    CONDITION = DIA_CUSTO_HOWDIDYOUGETHERE_CONDITION;
    INFORMATION = DIA_CUSTO_HOWDIDYOUGETHERE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How did you get here?";
}

func int DIA_CUSTO_HOWDIDYOUGETHERE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 80061)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CUSTO_HOWDIDYOUGETHERE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_HowDidYouGetThere_Male");
    AI_OUTPUT(SELF, OTHER, "DIA_Custo_HowDidYouGetHere_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Custo_HowDidYouGetHere_03_02");
}

instance DIA_CUSTO_PICKPOCKET(C_INFO) {
    NPC = 56612;
    NR = 900;
    CONDITION = DIA_CUSTO_PICKPOCKET_CONDITION;
    INFORMATION = DIA_CUSTO_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_CUSTO_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CUSTO_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(80064);
    INFO_ADDCHOICE(80064, DIALOG_BACK, 80068);
    INFO_ADDCHOICE(80064, DIALOG_PICKPOCKET, 80067);
}

func void DIA_CUSTO_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 33714, 1);
        B_GIVEINVITEMS(SELF, OTHER, 33714, 1);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(80064);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(80064);
}

func void DIA_CUSTO_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(80064);
}

