instance DIA_GERD_EXIT(C_INFO) {
    NPC = 0xdfb3;
    NR = 999;
    CONDITION = DIA_GERD_EXIT_CONDITION;
    INFORMATION = DIA_GERD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GERD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GERD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GERD_HELLO(C_INFO) {
    NPC = 0xdfb3;
    NR = 1;
    CONDITION = DIA_GERD_HELLO_CONDITION;
    INFORMATION = DIA_GERD_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_GERD_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_GERD_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gerd_HELLO_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_HELLO_03_02");
}

instance DIA_GERD_WORK(C_INFO) {
    NPC = 0xdfb3;
    NR = 2;
    CONDITION = DIA_GERD_WORK_CONDITION;
    INFORMATION = DIA_GERD_WORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What is your job?";
}

func int DIA_GERD_WORK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14d72)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GERD_WORK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gerd_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Work_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Work_03_03");
}

instance DIA_GERD_WHO(C_INFO) {
    NPC = 0xdfb3;
    NR = 3;
    CONDITION = DIA_GERD_WHO_CONDITION;
    INFORMATION = DIA_GERD_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who do you work for?";
}

func int DIA_GERD_WHO_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14d72)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GERD_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gerd_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Who_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Who_03_04");
}

instance DIA_GERD_WOLF(C_INFO) {
    NPC = 0xdfb3;
    NR = 4;
    CONDITION = DIA_GERD_WOLF_CONDITION;
    INFORMATION = DIA_GERD_WOLF_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "The Wolf Den?";
}

func int DIA_GERD_WOLF_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14d78)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GERD_WOLF_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Gerd_Wolf_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Wolf_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Wolf_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Wolf_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Wolf_03_05");
    AI_RESETFACEANI(OTHER);
}

instance DIA_GERD_NIRKO(C_INFO) {
    NPC = 0xdfb3;
    NR = 1;
    CONDITION = DIA_GERD_NIRKO_CONDITION;
    INFORMATION = DIA_GERD_NIRKO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know a guy named Elco?";
}

func int DIA_GERD_NIRKO_CONDITION() {
    if (((SQ101_SEARCHINGFORNIRKO) == (TRUE)) && ((LOG_GETSTATUS(MIS_SQ101)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GERD_NIRKO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Gerd_Nirko_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Nirko_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Nirko_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Gerd_Nirko_15_04");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Nirko_03_05");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Nirko_03_06");
}

instance DIA_GERD_AMBIENT(C_INFO) {
    NPC = 0xdfb3;
    NR = 950;
    CONDITION = DIA_GERD_AMBIENT_CONDITION;
    INFORMATION = DIA_GERD_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the work going?";
}

func int DIA_GERD_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14d72)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GERD_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    AI_OUTPUT(OTHER, SELF, "DIA_Gerd_Ambient_15_01");
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Ambient_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Gerd_Ambient_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Ambient_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Ambient_03_05");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        if ((LOG_GETSTATUS(MIS_SQ117)) == (LOG_SUCCESS)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Ambient_03_11");
            AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Ambient_03_12");
            AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Ambient_03_13");
        } else {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Ambient_03_06");
            AI_OUTPUT(OTHER, SELF, "DIA_Gerd_Ambient_15_07");
            AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Ambient_03_08");
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Ambient_03_09");
            AI_OUTPUT(SELF, OTHER, "DIA_Gerd_Ambient_03_10");
        };
    };
    AI_RESETFACEANI(SELF);
}

instance DIA_GERD_PICKPOCKET(C_INFO) {
    NPC = 0xdfb3;
    NR = 900;
    CONDITION = DIA_GERD_PICKPOCKET_CONDITION;
    INFORMATION = DIA_GERD_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_GERD_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GERD_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14d84);
    INFO_ADDCHOICE(0x14d84, DIALOG_BACK, 0x14d88);
    INFO_ADDCHOICE(0x14d84, DIALOG_PICKPOCKET, 0x14d87);
}

func void DIA_GERD_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x85b4, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x85b4, 2);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14d84);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14d84);
}

func void DIA_GERD_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14d84);
}

