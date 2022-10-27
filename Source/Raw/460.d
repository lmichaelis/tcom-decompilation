instance DIA_AMB_CITY_SOUTHERNER_EXIT(C_INFO) {
    NR = 999;
    CONDITION = DIA_AMB_CITY_SOUTHERNER_EXIT_CONDITION;
    INFORMATION = DIA_AMB_CITY_SOUTHERNER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_AMB_CITY_SOUTHERNER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SOUTHERNER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_CITY_SOUTHERNER_WHERE(C_INFO) {
    NR = 2;
    CONDITION = DIA_AMB_CITY_SOUTHERNER_WHERE_CONDITION;
    INFORMATION = DIA_AMB_CITY_SOUTHERNER_WHERE_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "Where are you from?";
}

func int DIA_AMB_CITY_SOUTHERNER_WHERE_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SOUTHERNER_WHERE_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhereDidYouComeFrom");
    B_SAY(SELF, OTHER, "$AMB_SOUTHERN_WHEREDOYOUCOMEFROM");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_SOUTHERNER_ABOUT(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_CITY_SOUTHERNER_ABOUT_CONDITION;
    INFORMATION = DIA_AMB_CITY_SOUTHERNER_ABOUT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What can you tell me about Archolos?";
}

func int DIA_AMB_CITY_SOUTHERNER_ABOUT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SOUTHERNER_ABOUT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_AboutThisArcholos");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        B_SAY(SELF, OTHER, "$AMB_SOUTHERN_WHATSHOULDIKNOWABOUTARCHOLOS_V1");
    };
    if ((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SOUTHERN_WHATSHOULDIKNOWABOUTARCHOLOS_V2");
    };
    if ((((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) || ((SELF.VOICE) == (64))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SOUTHERN_WHATSHOULDIKNOWABOUTARCHOLOS_V3");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_SOUTHERNER_WHATSUP(C_INFO) {
    NR = 4;
    CONDITION = DIA_AMB_CITY_SOUTHERNER_WHATSUP_CONDITION;
    INFORMATION = DIA_AMB_CITY_SOUTHERNER_WHATSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_AMB_CITY_SOUTHERNER_WHATSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_SOUTHERNER_WHATSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((KAPITEL) <= (2)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SOUTHERN_HOWSGOING_CH1TO2");
    };
    if (((KAPITEL) == (3)) || ((KAPITEL) == (4))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SOUTHERN_HOWSGOING_CH3TO4");
    };
    if ((KAPITEL) == (5)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_SOUTHERN_HOWSGOING_CH5");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_CITY_SOUTHERNER(var C_NPC SLF) {
    DIA_AMB_CITY_SOUTHERNER_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_SOUTHERNER_WHERE.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_SOUTHERNER_ABOUT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_SOUTHERNER_WHATSUP.NPC = HLP_GETINSTANCEID(SLF);
}
