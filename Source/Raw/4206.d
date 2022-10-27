instance DIA_ELIAS_EXIT(C_INFO) {
    NPC = 0xdfb5;
    NR = 999;
    CONDITION = DIA_ELIAS_EXIT_CONDITION;
    INFORMATION = DIA_ELIAS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ELIAS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ELIAS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ELIAS_HELLO(C_INFO) {
    NPC = 0xdfb5;
    NR = 1;
    CONDITION = DIA_ELIAS_HELLO_CONDITION;
    INFORMATION = DIA_ELIAS_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How's the work going?";
}

func int DIA_ELIAS_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_ELIAS_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Elias_HELLO_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_HELLO_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_HELLO_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_HELLO_03_04");
}

instance DIA_ELIAS_ULRYK(C_INFO) {
    NPC = 0xdfb5;
    NR = 2;
    CONDITION = DIA_ELIAS_ULRYK_CONDITION;
    INFORMATION = DIA_ELIAS_ULRYK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me about Ulryk.";
}

func int DIA_ELIAS_ULRYK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14d8c)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ELIAS_ULRYK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Elias_Ulryk_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ulryk_03_13");
}

instance DIA_ELIAS_WORK(C_INFO) {
    NPC = 0xdfb5;
    NR = 3;
    CONDITION = DIA_ELIAS_WORK_CONDITION;
    INFORMATION = DIA_ELIAS_WORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm looking for a job. Do you know who should I talk to?";
}

func int DIA_ELIAS_WORK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14d8c)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ELIAS_WORK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Elias_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Work_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Work_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Work_03_04");
}

instance DIA_ELIAS_NIRKO(C_INFO) {
    NPC = 0xdfb5;
    NR = 1;
    CONDITION = DIA_ELIAS_NIRKO_CONDITION;
    INFORMATION = DIA_ELIAS_NIRKO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'm looking for a man named Elco. Do you know him?";
}

func int DIA_ELIAS_NIRKO_CONDITION() {
    if (((SQ101_SEARCHINGFORNIRKO) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ101)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ELIAS_NIRKO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Elias_Nirko_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Nirko_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Nirko_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Elias_Nirko_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Elias_Nirko_03_05");
}

instance DIA_ELIAS_AMBIENT(C_INFO) {
    NPC = 0xdfb5;
    NR = 950;
    CONDITION = DIA_ELIAS_AMBIENT_CONDITION;
    INFORMATION = DIA_ELIAS_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Are you all right?";
}

func int DIA_ELIAS_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14d8c)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ELIAS_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    AI_OUTPUT(OTHER, SELF, "DIA_Elias_Ambient_15_01");
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ambient_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ambient_03_03");
        AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
        AI_OUTPUT(OTHER, SELF, "DIA_Elias_Ambient_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ambient_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ambient_03_06");
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ambient_03_07");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ambient_03_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Elias_Ambient_03_09");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_ELIAS_PICKPOCKET(C_INFO) {
    NPC = 0xdfb5;
    NR = 900;
    CONDITION = DIA_ELIAS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ELIAS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_ELIAS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ELIAS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14d9b);
    INFO_ADDCHOICE(0x14d9b, DIALOG_BACK, 0x14d9f);
    INFO_ADDCHOICE(0x14d9b, DIALOG_PICKPOCKET, 0x14d9e);
}

func void DIA_ELIAS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x85b4, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x85b4, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14d9b);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14d9b);
}

func void DIA_ELIAS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14d9b);
}

