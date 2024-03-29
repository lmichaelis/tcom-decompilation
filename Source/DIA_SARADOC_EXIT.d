instance DIA_SARADOC_EXIT(C_INFO) {
    NPC = 55819;
    NR = 999;
    CONDITION = DIA_SARADOC_EXIT_CONDITION;
    INFORMATION = DIA_SARADOC_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SARADOC_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SARADOC_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SARADOC_HELLO(C_INFO) {
    NPC = 55819;
    NR = 1;
    CONDITION = DIA_SARADOC_HELLO_CONDITION;
    INFORMATION = DIA_SARADOC_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SARADOC_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_SARADOC_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saradoc_HELLO_03_01");
    INFO_CLEARCHOICES(77371);
    INFO_ADDCHOICE(77371, "I don't have time right now.", 77376);
    INFO_ADDCHOICE(77371, "What are you talking about?", 77375);
}

func void DIA_SARADOC_FIGHT() {
    SELF.AIVAR[45] = AF_RUNNING;
    INFO_CLEARCHOICES(77371);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

func void DIA_SARADOC_HELLO_WHAT() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatAreYouTalkingAbout");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saradoc_HELLO_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Saradoc_HELLO_What_03_03");
    DIA_SARADOC_FIGHT();
}

func void DIA_SARADOC_HELLO_NOTNOW() {
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_DONTHAVETIME");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saradoc_HELLO_NotNow_03_02");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Saradoc_HELLO_NotNow_03_03");
    DIA_SARADOC_FIGHT();
}

instance DIA_SARADOC_AFTERFIGHT(C_INFO) {
    NPC = 55819;
    NR = 1;
    CONDITION = DIA_SARADOC_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_SARADOC_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SARADOC_AFTERFIGHT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 77371)) {
        if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
            if ((SELF.AIVAR[45]) != (AF_NONE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SARADOC_AFTERFIGHT_INFO() {
    B_HEALNPC_SELF();
    SELF.AIVAR[15] = TRUE;
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Saradoc_AfterFight_03_02");
        B_GIVEPLAYERXP(XP_SARADOC_AFTERBATTLE);
    };
    HERO.LP = (HERO.LP) + (LP_FROMSARADOC);
    PRINTSCREENS(CONCATSTRINGS(PRINT_LEARNLP, INTTOSTRING(LP_FROMSARADOC)), -(1), YPOS_LOGENTRY, FONT_SCREENSMALL, 4);
    AI_OUTPUT(SELF, OTHER, "DIA_Saradoc_AfterFight_03_01");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, TOT);
}

