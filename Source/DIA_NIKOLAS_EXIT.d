instance DIA_NIKOLAS_EXIT(C_INFO) {
    NPC = 53832;
    NR = 999;
    CONDITION = DIA_NIKOLAS_EXIT_CONDITION;
    INFORMATION = DIA_NIKOLAS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NIKOLAS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NIKOLAS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NIKOLAS_HELLO(C_INFO) {
    NPC = 53832;
    NR = 1;
    CONDITION = DIA_NIKOLAS_HELLO_CONDITION;
    INFORMATION = DIA_NIKOLAS_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_NIKOLAS_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && (NPC_KNOWSINFO(OTHER, 77129))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIKOLAS_HELLO_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_REFUSETALK(SELF)) == (FALSE)) {
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_HELLO_03_01");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_HELLO_03_02");
        };
    };
}

instance DIA_NIKOLAS_WHAT(C_INFO) {
    NPC = 53832;
    NR = 2;
    CONDITION = DIA_NIKOLAS_WHAT_CONDITION;
    INFORMATION = DIA_NIKOLAS_WHAT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NIKOLAS_WHAT_CONDITION() {
    return TRUE;
}

func void DIA_NIKOLAS_WHAT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_WHAT_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_WHAT_03_02");
    INFO_CLEARCHOICES(77129);
    INFO_ADDCHOICE(77129, "I apologize.", 77132);
    INFO_ADDCHOICE(77129, "Kiss my ass!", 77133);
}

func void DIA_NIKOLAS_WHAT_SORRY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Amir_Hello_Sorry_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_WHAT_Sorry_03_02");
    AI_PLAYANI(SELF, "T_FORGETIT");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_WHAT_Sorry_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_WHAT_Sorry_03_04");
    INFO_CLEARCHOICES(77129);
}

func void DIA_NIKOLAS_WHAT_DONTCARE() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_FuckOff");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_WHAT_DontCare_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_WHAT_DontCare_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_WHAT_DontCare_03_04");
    INFO_CLEARCHOICES(77129);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_NIKOLAS_SCHOLAR(C_INFO) {
    NPC = 53832;
    NR = 10;
    CONDITION = DIA_NIKOLAS_SCHOLAR_CONDITION;
    INFORMATION = DIA_NIKOLAS_SCHOLAR_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you tell me what you do here?";
}

func int DIA_NIKOLAS_SCHOLAR_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 77129)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIKOLAS_SCHOLAR_INFO() {
    AI_STARTFACEANI(OTHER, S_THINK, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_AbouYou");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_Scholar_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_Scholar_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_Scholar_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_Scholar_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_Scholar_03_09");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_NIKOLAS_WORK(C_INFO) {
    NPC = 53832;
    NR = 11;
    CONDITION = DIA_NIKOLAS_WORK_CONDITION;
    INFORMATION = DIA_NIKOLAS_WORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you need help?";
}

func int DIA_NIKOLAS_WORK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 77134)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIKOLAS_WORK_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_QuestAboutTask4");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_Work_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_Work_03_03");
    TRADER_LOGENTRY_NIKOLAS();
}

instance DIA_NIKOLAS_TRADE(C_INFO) {
    NPC = 53832;
    NR = 1;
    CONDITION = DIA_NIKOLAS_TRADE_CONDITION;
    INFORMATION = DIA_NIKOLAS_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's trade!";
}

func int DIA_NIKOLAS_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 77137)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIKOLAS_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    B_GIVETRADEINV(SELF);
}

instance DIA_NIKOLAS_AMBIENT(C_INFO) {
    NPC = 53832;
    NR = 980;
    CONDITION = DIA_NIKOLAS_AMBIENT_CONDITION;
    INFORMATION = DIA_NIKOLAS_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_NIKOLAS_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 77137)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIKOLAS_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_Ambient_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_Ambient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Nikolas_Ambient_03_03");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_NIKOLAS_PICKPOCKET(C_INFO) {
    NPC = 53832;
    NR = 900;
    CONDITION = DIA_NIKOLAS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_NIKOLAS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_NIKOLAS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NIKOLAS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(77146);
    INFO_ADDCHOICE(77146, DIALOG_BACK, 77150);
    INFO_ADDCHOICE(77146, DIALOG_PICKPOCKET, 77149);
}

func void DIA_NIKOLAS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 34207, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34207, 1);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(77146);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(77146);
}

func void DIA_NIKOLAS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(77146);
}
