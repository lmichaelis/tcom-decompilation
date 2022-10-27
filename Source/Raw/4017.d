var int HOD_EXIT_FIRSTTIME = 0;
instance DIA_HOD_EXIT(C_INFO) {
    NPC = 0xdb73;
    NR = 999;
    CONDITION = DIA_HOD_EXIT_CONDITION;
    INFORMATION = DIA_HOD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HOD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HOD_EXIT_INFO() {
    if ((HOD_EXIT_FIRSTTIME) == (FALSE)) {
        HOD_EXIT_FIRSTTIME = TRUE;
        AI_OUTPUT(OTHER, SELF, "DIA_Hod_EXIT_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Hod_EXIT_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Hod_EXIT_03_03");
    };
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOD_WHO(C_INFO) {
    NPC = 0xdb73;
    NR = 1;
    CONDITION = DIA_HOD_WHO_CONDITION;
    INFORMATION = DIA_HOD_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_HOD_WHO_CONDITION() {
    return TRUE;
}

func void DIA_HOD_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hod_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hod_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hod_Who_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Hod_Who_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Hod_Who_03_05");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hod_Who_03_06");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Hod_Who_03_07");
}

instance DIA_HOD_WORK(C_INFO) {
    NPC = 0xdb73;
    NR = 2;
    CONDITION = DIA_HOD_WORK_CONDITION;
    INFORMATION = DIA_HOD_WORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How's the work going?";
}

func int DIA_HOD_WORK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1315a)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOD_WORK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hod_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hod_Work_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hod_Work_03_03");
}

instance DIA_HOD_WHATDO(C_INFO) {
    NPC = 0xdb73;
    NR = 3;
    CONDITION = DIA_HOD_WHATDO_CONDITION;
    INFORMATION = DIA_HOD_WHATDO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_HOD_WHATDO_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1315a)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOD_WHATDO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hod_WhatDo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hod_WhatDo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Hod_WhatDo_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Hod_WhatDo_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Hod_WhatDo_03_05");
}

instance DIA_HOD_MARINE(C_INFO) {
    NPC = 0xdb73;
    NR = 4;
    CONDITION = DIA_HOD_MARINE_CONDITION;
    INFORMATION = DIA_HOD_MARINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You were a sailor?";
}

func int DIA_HOD_MARINE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1315a)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOD_MARINE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hod_Marine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Hod_Marine_03_03");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hod_Marine_03_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Hod_Marine_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Hod_Marine_03_06");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Hod_Marine_03_07");
}

instance DIA_HOD_AMBIENT(C_INFO) {
    NPC = 0xdb73;
    NR = 950;
    CONDITION = DIA_HOD_AMBIENT_CONDITION;
    INFORMATION = DIA_HOD_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_HOD_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x1315a)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOD_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Hod_Ambient_15_01");
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hod_Ambient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Hod_Ambient_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Hod_Ambient_03_04");
    };
}

instance DIA_HOD_PICKPOCKET(C_INFO) {
    NPC = 0xdb73;
    NR = 900;
    CONDITION = DIA_HOD_PICKPOCKET_CONDITION;
    INFORMATION = DIA_HOD_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_HOD_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOD_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x13169);
    INFO_ADDCHOICE(0x13169, DIALOG_BACK, 0x1316d);
    INFO_ADDCHOICE(0x13169, DIALOG_PICKPOCKET, 0x1316c);
}

func void DIA_HOD_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x13169);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x13169);
}

func void DIA_HOD_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x13169);
}

