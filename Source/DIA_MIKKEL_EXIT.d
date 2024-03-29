instance DIA_MIKKEL_EXIT(C_INFO) {
    NPC = 54543;
    NR = 999;
    CONDITION = DIA_MIKKEL_EXIT_CONDITION;
    INFORMATION = DIA_MIKKEL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MIKKEL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MIKKEL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MIKKEL_HELLO(C_INFO) {
    NPC = 54543;
    NR = 1;
    CONDITION = DIA_MIKKEL_HELLO_CONDITION;
    INFORMATION = DIA_MIKKEL_HELLO_INFO;
    IMPORTANT = TRUE;
    PERMANENT = TRUE;
}

func int DIA_MIKKEL_HELLO_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_RUNNING))) {
        if ((KAPITEL) < (3)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MIKKEL_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Mikkel_Hello_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Mikkel_Hello_14_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MIKKEL_AMBIENT(C_INFO) {
    NPC = 54543;
    NR = 2;
    CONDITION = DIA_MIKKEL_AMBIENT_CONDITION;
    INFORMATION = DIA_MIKKEL_AMBIENT_INFO;
    DESCRIPTION = "Hi, how are you doing?";
    PERMANENT = TRUE;
}

func int DIA_MIKKEL_AMBIENT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_FAQ003)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_FAQ003)) != (LOG_SUCCESS))) {
        if ((KAPITEL) < (3)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MIKKEL_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Mikkel_Ambient_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Mikkel_Ambient_14_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Mikkel_Ambient_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Mikkel_Ambient_14_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Mikkel_Ambient_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Mikkel_Ambient_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Mikkel_Ambient_14_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Mikkel_Ambient_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Mikkel_Ambient_14_08");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MIKKEL_PICKPOCKET(C_INFO) {
    NPC = 54543;
    NR = 900;
    CONDITION = DIA_MIKKEL_PICKPOCKET_CONDITION;
    INFORMATION = DIA_MIKKEL_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_MIKKEL_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MIKKEL_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(74310);
    INFO_ADDCHOICE(74310, DIALOG_BACK, 74314);
    INFO_ADDCHOICE(74310, DIALOG_PICKPOCKET, 74313);
}

func void DIA_MIKKEL_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 33984, 1);
        B_GIVEINVITEMS(SELF, OTHER, 33984, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(74310);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(74310);
}

func void DIA_MIKKEL_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(74310);
}

