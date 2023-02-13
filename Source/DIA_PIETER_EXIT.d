instance DIA_PIETER_EXIT(C_INFO) {
    NPC = 54565;
    NR = 999;
    CONDITION = DIA_PIETER_EXIT_CONDITION;
    INFORMATION = DIA_PIETER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_PIETER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_PIETER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_PIETER_FAQ002(C_INFO) {
    NPC = 54565;
    NR = 1;
    CONDITION = DIA_PIETER_FAQ002_CONDITION;
    INFORMATION = DIA_PIETER_FAQ002_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_PIETER_FAQ002_CONDITION() {
    if (((LOG_GETSTATUS(MIS_FAQ002)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 61599))) {
        if (((FAQ002_FIGHTWITHPIETER) == (1)) || ((FAQ002_FIGHTWITHPIETER) == (4))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void PIETER_ARENAFIGHT() {
    SELF.AIVAR[45] = AF_RUNNING;
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
}

func void DIA_PIETER_FAQ002_GULL() {
    FAQ002_FIGHTWITHPIETER = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Pieter_FAQ002_Gull_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Pieter_FAQ002_Gull_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Pieter_FAQ002_Gull_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Pieter_FAQ002_Gull_03_04");
    INFO_CLEARCHOICES(75542);
    PIETER_ARENAFIGHT();
}

func void DIA_PIETER_FAQ002_INFO() {
    if ((FAQ002_FIGHTWITHPIETER) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Pieter_FAQ002_03_01");
        INFO_CLEARCHOICES(75542);
        INFO_ADDCHOICE(75542, "I didn't know they let in boors like you.", 75545);
    };
    DIA_PIETER_FAQ002_GULL();
}

instance DIA_PIETER_PISSOFF(C_INFO) {
    NPC = 54565;
    NR = 3;
    CONDITION = DIA_PIETER_PISSOFF_CONDITION;
    INFORMATION = DIA_PIETER_PISSOFF_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_PIETER_PISSOFF_CONDITION() {
    if ((LOG_GETSTATUS(MIS_FAQ002)) == (LOG_RUNNING)) {
        if ((FAQ002_FIGHTWITHPIETER) == (2)) {
            if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
                if ((SELF.AIVAR[45]) != (AF_NONE)) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_PIETER_PISSOFF_INFO() {
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        FAQ002_FIGHTWITHPIETER = 4;
        AI_OUTPUT(SELF, OTHER, "DIA_Pieter_PieterWon_03_01");
    };
    FAQ002_FIGHTWITHPIETER = 3;
    AI_OUTPUT(OTHER, SELF, "DIA_Pieter_PissOff_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Pieter_PissOff_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Pieter_PissOff_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Pieter_PissOff_03_04");
    AI_LOGENTRY(TOPIC_FAQ002, LOG_FAQ002_PIETER_AFTERFIGHT);
    MDL_APPLYOVERLAYMDS(SELF, HUMANSTIREDMDS);
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[45] = AF_NONE;
    SELF.AIVAR[64] = TRUE;
}

instance DIA_PIETER_AMBIENT(C_INFO) {
    NPC = 54565;
    NR = 870;
    CONDITION = DIA_PIETER_AMBIENT_CONDITION;
    INFORMATION = DIA_PIETER_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_PIETER_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_PIETER_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        B_SAY(SELF, OTHER, "$RUDE_GOODBYE");
    };
    AI_RESETFACEANI(SELF);
}

instance DIA_PIETER_PICKPOCKET(C_INFO) {
    NPC = 54565;
    NR = 900;
    CONDITION = DIA_PIETER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_PIETER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_PIETER_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PIETER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(75553);
    INFO_ADDCHOICE(75553, DIALOG_BACK, 75557);
    INFO_ADDCHOICE(75553, DIALOG_PICKPOCKET, 75556);
}

func void DIA_PIETER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(75553);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(75553);
}

func void DIA_PIETER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(75553);
}
