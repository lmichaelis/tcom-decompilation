instance DIA_JENS_EXIT(C_INFO) {
    NPC = 0xe0fe;
    NR = 999;
    CONDITION = DIA_JENS_EXIT_CONDITION;
    INFORMATION = DIA_JENS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_JENS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_JENS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_JENS_HELLO(C_INFO) {
    NPC = 0xe0fe;
    NR = 1;
    CONDITION = DIA_JENS_HELLO_CONDITION;
    INFORMATION = DIA_JENS_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_JENS_HELLO_CONDITION() {
    if (((NPC_GETDISTTOWP(SELF, "VILLAGE_HOUSE_08_CHAIR")) <= (300)) && ((HERO.GUILD) == (GIL_NONE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_JENS_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Hello_13_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Hello_13_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Jens_Hello_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Hello_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Hello_13_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Hello_13_05");
    INFO_CLEARCHOICES(0x15ac6);
    INFO_ADDCHOICE(0x15ac6, "You must be dreaming.", 0x15ac9);
    INFO_ADDCHOICE(0x15ac6, "All right!", 0x15aca);
}

func void DIA_JENS_HELLO_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Jens_Hello_NO_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Hello_NO_13_01");
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[45] = AF_RUNNING;
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
    NPC_EXCHANGEROUTINE(SELF, "NORMALDAY");
}

func void DIA_JENS_HELLO_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Jens_Hello_YES_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Hello_YES_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Hello_YES_13_02");
    CREATEINVITEMS(SELF, 0x8590, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8590, 1);
    JENSCLEANING = TRUE;
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_JENS_AFTERWASHING(C_INFO) {
    NPC = 0xe0fe;
    NR = 1;
    CONDITION = DIA_JENS_AFTERWASHING_CONDITION;
    INFORMATION = DIA_JENS_AFTERWASHING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Job's done!";
}

func int DIA_JENS_AFTERWASHING_CONDITION() {
    if ((JENSWASHING) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_JENS_AFTERWASHING_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Jens_Afterwashing_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Afterwashing_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Afterwashing_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Afterwashing_13_03");
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, JENS_REWARD);
    NPC_EXCHANGEROUTINE(SELF, "NORMALDAY");
    B_GIVEPLAYERXP(XP_JENSFINISH);
    GIVEREPUTATION_SILBACH();
}

instance DIA_JENS_WELCOME(C_INFO) {
    NPC = 0xe0fe;
    NR = 1;
    CONDITION = DIA_JENS_WELCOME_CONDITION;
    INFORMATION = DIA_JENS_WELCOME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_JENS_WELCOME_CONDITION() {
    return TRUE;
}

func void DIA_JENS_WELCOME_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Jens_WELCOME_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_WELCOME_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_WELCOME_03_03");
    AI_RESETFACEANI(SELF);
}

instance DIA_JENS_TALK(C_INFO) {
    NPC = 0xe0fe;
    NR = 2;
    CONDITION = DIA_JENS_TALK_CONDITION;
    INFORMATION = DIA_JENS_TALK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You're not very talkative, are you?";
}

func int DIA_JENS_TALK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15ace)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_JENS_TALK_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Jens_Talk_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Jens_Talk_03_02");
    AI_RESETFACEANI(SELF);
}

instance DIA_JENS_AMBIENT(C_INFO) {
    NPC = 0xe0fe;
    NR = 900;
    CONDITION = DIA_JENS_AMBIENT_CONDITION;
    INFORMATION = DIA_JENS_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_JENS_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15ad1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_JENS_AMBIENT_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Jens_Ambient_15_01");
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Jens_Ambient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Jens_Ambient_03_03");
    };
    AI_RESETFACEANI(SELF);
}

instance DIA_JENS_PICKPOCKET(C_INFO) {
    NPC = 0xe0fe;
    NR = 900;
    CONDITION = DIA_JENS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_JENS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_JENS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_JENS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x15ad7);
    INFO_ADDCHOICE(0x15ad7, DIALOG_BACK, 0x15adb);
    INFO_ADDCHOICE(0x15ad7, DIALOG_PICKPOCKET, 0x15ada);
}

func void DIA_JENS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x15ad7);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x15ad7);
}

func void DIA_JENS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x15ad7);
}

