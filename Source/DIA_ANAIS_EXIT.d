instance DIA_ANAIS_EXIT(C_INFO) {
    NPC = 54578;
    NR = 999;
    CONDITION = DIA_ANAIS_EXIT_CONDITION;
    INFORMATION = DIA_ANAIS_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ANAIS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ANAIS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ANAIS_Q206_SAD(C_INFO) {
    NPC = 54578;
    NR = 1;
    CONDITION = DIA_ANAIS_Q206_SAD_CONDITION;
    INFORMATION = DIA_ANAIS_Q206_SAD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You look worried.";
}

func int DIA_ANAIS_Q206_SAD_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING)) && ((Q206_KNOWSFINBAR) == (TRUE))) && ((Q206_FINBARCORPSELETTER_READ) == (TRUE))) && ((NPC_GETDISTTOWP(SELF, "HARBOUR_PATH_100")) <= (1000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANAIS_Q206_SAD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Anais_Q206_Sad_15_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Anais_Q206_Sad_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Anais_Q206_Sad_03_03");
}

instance DIA_ANAIS_Q206_KNOWHIM(C_INFO) {
    NPC = 54578;
    NR = 1;
    CONDITION = DIA_ANAIS_Q206_KNOWHIM_CONDITION;
    INFORMATION = DIA_ANAIS_Q206_KNOWHIM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Did you know him better?";
}

func int DIA_ANAIS_Q206_KNOWHIM_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 75824)) && ((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING))) && ((Q206_KNOWSFINBAR) == (TRUE))) && ((NPC_GETDISTTOWP(SELF, "HARBOUR_PATH_100")) <= (1000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANAIS_Q206_KNOWHIM_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Anais_Q206_KnowHim_15_01");
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Anais_Q206_KnowHim_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Anais_Q206_KnowHim_03_03");
}

instance DIA_ANAIS_Q206_WHERE(C_INFO) {
    NPC = 54578;
    NR = 1;
    CONDITION = DIA_ANAIS_Q206_WHERE_CONDITION;
    INFORMATION = DIA_ANAIS_Q206_WHERE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Where is this warehouse?";
}

func int DIA_ANAIS_Q206_WHERE_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 75827)) && ((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING))) && ((Q206_KNOWSFINBAR) == (TRUE))) && ((NPC_GETDISTTOWP(SELF, "HARBOUR_PATH_100")) <= (1000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANAIS_Q206_WHERE_INFO() {
    Q206_ANAISINFO = TRUE;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Anais_Q206_Where_15_01");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Anais_Q206_Where_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Anais_Q206_Where_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Anais_Q206_Where_03_04");
    INFO_CLEARCHOICES(75830);
    INFO_ADDCHOICE(75830, "I don't have time right now.", 75835);
    INFO_ADDCHOICE(75830, "Let's go!", 75834);
}

var int ANAIS_Q206_GUIDE;
func void DIA_ANAIS_Q206_WHERE_GO() {
    ANAIS_Q206_GUIDE = TRUE;
    SELF.AIVAR[15] = TRUE;
    B_SAY(OTHER, SELF, "$MARVIN_LETSGO");
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q206_GUIDE");
}

func void DIA_ANAIS_Q206_WHERE_NOWAY() {
    B_SAY(OTHER, SELF, "$MARVIN_DONTHAVETIME");
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ANAIS_Q206_THANKS(C_INFO) {
    NPC = 54578;
    NR = 1;
    CONDITION = DIA_ANAIS_Q206_THANKS_CONDITION;
    INFORMATION = DIA_ANAIS_Q206_THANKS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ANAIS_Q206_THANKS_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q206)) == (LOG_RUNNING)) && ((NPC_GETDISTTOWP(SELF, "SLUMS_PATH_36")) <= (500))) && (NPC_KNOWSINFO(OTHER, 75830))) && ((ANAIS_Q206_GUIDE) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANAIS_Q206_THANKS_INFO() {
    AI_TURNTONPC(SELF, VLK_6029_GUY);
    AI_POINTATNPC(SELF, VLK_6029_GUY);
    AI_OUTPUT(SELF, OTHER, "DIA_Anais_Q206_Thanks_03_01");
    AI_STOPPOINTAT(SELF);
    AI_TURNTONPC(SELF, OTHER);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Anais_Q206_Thanks_03_02");
    AI_LOGENTRY(TOPIC_Q206, LOG_Q206_ANAIS_STORAGE);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q206_HOME");
    SELF.AIVAR[15] = FALSE;
}

instance DIA_ANAIS_AMBIENT(C_INFO) {
    NPC = 54578;
    NR = 990;
    CONDITION = DIA_ANAIS_AMBIENT_CONDITION;
    INFORMATION = DIA_ANAIS_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_ANAIS_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 75830)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANAIS_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if ((ANAIS_Q206_GUIDE) == (FALSE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Anais_Ambient_03_01");
        AI_STOPPROCESSINFOS(SELF);
    };
    if (((ANAIS_Q206_GUIDE) == (TRUE)) && (!(NPC_KNOWSINFO(OTHER, 75836)))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Anais_Ambient_03_02");
    };
    if (((ANAIS_Q206_GUIDE) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 75836))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Anais_Ambient_03_03");
    };
}

instance DIA_ANAIS_PICKPOCKET(C_INFO) {
    NPC = 54578;
    NR = 900;
    CONDITION = DIA_ANAIS_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ANAIS_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40_FEMALE;
}

func int DIA_ANAIS_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANAIS_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(75842);
    INFO_ADDCHOICE(75842, DIALOG_BACK, 75846);
    INFO_ADDCHOICE(75842, DIALOG_PICKPOCKET, 75845);
}

func void DIA_ANAIS_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(75842);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(75842);
}

func void DIA_ANAIS_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(75842);
}
