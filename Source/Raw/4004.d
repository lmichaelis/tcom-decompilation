instance DIA_DARTHE_EXIT(C_INFO) {
    NPC = 0xda50;
    NR = 999;
    CONDITION = DIA_DARTHE_EXIT_CONDITION;
    INFORMATION = DIA_DARTHE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_DARTHE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_DARTHE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DARTHE_QA203_HELLO(C_INFO) {
    NPC = 0xda50;
    NR = 1;
    CONDITION = DIA_DARTHE_QA203_HELLO_CONDITION;
    INFORMATION = DIA_DARTHE_QA203_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I came on behalf of the Merchant's Guild.";
}

func int DIA_DARTHE_QA203_HELLO_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_QA203)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x111e9))) && (NPC_KNOWSINFO(OTHER, 0x12f7d))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DARTHE_QA203_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_Hello_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DARTHE_QA203_WHATSWRONG(C_INFO) {
    NPC = 0xda50;
    NR = 1;
    CONDITION = DIA_DARTHE_QA203_WHATSWRONG_CONDITION;
    INFORMATION = DIA_DARTHE_QA203_WHATSWRONG_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Why don't you want to cooperate?";
}

func int DIA_DARTHE_QA203_WHATSWRONG_CONDITION() {
    if (((LOG_GETSTATUS(MIS_QA203)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x12f6f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DARTHE_QA203_WHATSWRONG_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_WhatsWrong_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_WhatsWrong_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_WhatsWrong_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_WhatsWrong_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_WhatsWrong_03_05");
    AI_LOGENTRY(TOPIC_QA203, LOG_QA203_DARTHE_REFUSE);
}

instance DIA_DARTHE_QA203_AFTERHELP(C_INFO) {
    NPC = 0xda50;
    NR = 1;
    CONDITION = DIA_DARTHE_QA203_AFTERHELP_CONDITION;
    INFORMATION = DIA_DARTHE_QA203_AFTERHELP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DARTHE_QA203_AFTERHELP_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_QA203)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x111f4))) && ((NPC_HASITEMS(OTHER, 0x90ee)) >= (1))) && ((NPC_HASITEMS(OTHER, 0x90f8)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DARTHE_QA203_AFTERHELP_INFO() {
    NONE_6080_DARTHE.FLAGS = NPC_FLAG_IMPORTANT;
    NONE_6080_DARTHE.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(SELF, START);
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_15_04");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_15_06");
    B_GIVEINVITEMS(OTHER, SELF, 0x90ee, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_03_07");
    INFO_CLEARCHOICES(0x12f75);
    INFO_ADDCHOICE(0x12f75, "You don't have to work for the Guild, lease is enough.", 0x12f78);
    if ((NPC_HASITEMS(OTHER, 0x90fb)) >= (1)) {
        INFO_ADDCHOICE(0x12f75, "Your father warned you about a Guild that no longer exists.", 0x12f79);
    };
}

func void DIA_DARTHE_QA203_AFTERHELP_GUILD() {
    QA203_ENDING = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Guild_15_01");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_Guild_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Guild_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Guild_15_04");
    B_GIVEINVITEMS(OTHER, SELF, 0x90f8, 1);
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_Guild_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Guild_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_Guild_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Guild_15_08");
    AI_LOGENTRY(TOPIC_QA203, LOG_QA203_DARTHE_THANKS_V1);
    INFO_CLEARCHOICES(0x12f75);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_DARTHE_QA203_AFTERHELP_FATHER() {
    QA203_ENDING = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Father_15_01");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_Father_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Father_15_03");
    B_GIVEINVITEMS(OTHER, SELF, 0x90fb, 1);
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_Father_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Father_15_05");
    if ((LOG_GETSTATUS(MIS_Q405)) != (LOG_SUCCESS)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Father_15_06");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_Father_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Father_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_Father_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Father_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QA203_AfterHelp_Father_03_11");
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QA203_AfterHelp_Father_15_12");
    B_GIVEINVITEMS(SELF, OTHER, 0x90fb, 1);
    INFO_CLEARCHOICES(0x12f75);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_QA203, LOG_QA203_DARTHE_THANKS_V2);
}

instance DIA_DARTHE_QM303_SEARCH(C_INFO) {
    NPC = 0xda50;
    NR = 1;
    CONDITION = DIA_DARTHE_QM303_SEARCH_CONDITION;
    INFORMATION = DIA_DARTHE_QM303_SEARCH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Have you seen two guards in the area lately?";
}

func int DIA_DARTHE_QM303_SEARCH_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QM303)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DARTHE_QM303_SEARCH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Darthe_QM303_Search_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_QM303_Search_03_02");
    AI_LOGENTRY(TOPIC_QM303, LOG_QM303_DARTHE_INFO);
}

instance DIA_DARTHE_HELLO(C_INFO) {
    NPC = 0xda50;
    NR = 1;
    CONDITION = DIA_DARTHE_HELLO_CONDITION;
    INFORMATION = DIA_DARTHE_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_DARTHE_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_DARTHE_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhoAreYou");
    AI_OUTPUT(SELF, OTHER, "DIA_Darthe_Hello_03_01");
}

instance DIA_DARTHE_AMBIENT(C_INFO) {
    NPC = 0xda50;
    NR = 998;
    CONDITION = DIA_DARTHE_AMBIENT_CONDITION;
    INFORMATION = DIA_DARTHE_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_DARTHE_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12f7d)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DARTHE_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if (((QA203_ENDING) < (1)) && ((KAPITEL) != (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Darthe_Ambient_03_01");
    };
    if (((QA203_ENDING) == (1)) || (((QA203_ENDING) == (2)) && ((KAPITEL) != (5)))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Darthe_Ambient_03_02");
    };
    if ((KAPITEL) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Darthe_Ambient_03_03");
    };
}

instance DIA_DARTHE_PICKPOCKET(C_INFO) {
    NPC = 0xda50;
    NR = 900;
    CONDITION = DIA_DARTHE_PICKPOCKET_CONDITION;
    INFORMATION = DIA_DARTHE_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_DARTHE_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DARTHE_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x12f83);
    INFO_ADDCHOICE(0x12f83, DIALOG_BACK, 0x12f87);
    INFO_ADDCHOICE(0x12f83, DIALOG_PICKPOCKET, 0x12f86);
}

func void DIA_DARTHE_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x864f, 4);
        B_GIVEINVITEMS(SELF, OTHER, 0x864f, 4);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x12f83);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x12f83);
}

func void DIA_DARTHE_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x12f83);
}
