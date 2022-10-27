instance DIA_LAURIN_EXIT(C_INFO) {
    NPC = 0xe4a9;
    NR = 999;
    CONDITION = DIA_LAURIN_EXIT_CONDITION;
    INFORMATION = DIA_LAURIN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LAURIN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LAURIN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LAURIN_HELLO(C_INFO) {
    NPC = 0xe4a9;
    NR = 1;
    CONDITION = DIA_LAURIN_HELLO_CONDITION;
    INFORMATION = DIA_LAURIN_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LAURIN_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_LAURIN_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Laurin_Hello_13_00");
    AI_OUTPUT(OTHER, SELF, "DIA_Laurin_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Laurin_Hello_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Laurin_Hello_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Laurin_Hello_13_04");
}

instance DIA_LAURIN_WHAT(C_INFO) {
    NPC = 0xe4a9;
    NR = 1;
    CONDITION = DIA_LAURIN_WHAT_CONDITION;
    INFORMATION = DIA_LAURIN_WHAT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_LAURIN_WHAT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x143c8)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LAURIN_WHAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Laurin_What_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Laurin_What_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Laurin_What_13_02");
}

instance DIA_LAURIN_PICKPOCKET(C_INFO) {
    NPC = 0xe4a9;
    NR = 900;
    CONDITION = DIA_LAURIN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LAURIN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_LAURIN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LAURIN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x143ce);
    INFO_ADDCHOICE(0x143ce, DIALOG_BACK, 0x143d2);
    INFO_ADDCHOICE(0x143ce, DIALOG_PICKPOCKET, 0x143d1);
}

func void DIA_LAURIN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x143ce);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x143ce);
}

func void DIA_LAURIN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x143ce);
}

