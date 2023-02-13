func int DIA_AMB_CITYGUIDE_ABOUTGUILD_CONDITION() {
    if (C_FASTTRAVEL_IAMCITYGUIDE(SELF)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMB_CITYGUIDE_ABOUTGUILD_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutCity");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    B_SAY(SELF, OTHER, "$AMB_ARXGUIDE_CITY_ABOUTCITY_01");
    B_SAY(SELF, OTHER, "$AMB_ARXGUIDE_CITY_ABOUTCITY_02");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITYGUIDE_KING(C_INFO) {
    NR = 11;
    CONDITION = DIA_AMB_CITYGUIDE_KING_CONDITION;
    INFORMATION = DIA_AMB_CITYGUIDE_KING_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What can you tell me about Archolos?";
}

func int DIA_AMB_CITYGUIDE_KING_CONDITION() {
    if (C_FASTTRAVEL_IAMARAXOS(SELF)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMB_CITYGUIDE_KING_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_AboutThisArcholos");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    B_SAY(SELF, OTHER, "$AMB_ARXGUIDE_ISLAND_ABOUTARCHOLOS_01");
    B_SAY(SELF, OTHER, "$AMB_ARXGUIDE_ISLAND_ABOUTARCHOLOS_02");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITYGUIDE_WHATSSUP(C_INFO) {
    NR = 12;
    CONDITION = DIA_AMB_CITYGUIDE_WHATSSUP_CONDITION;
    INFORMATION = DIA_AMB_CITYGUIDE_WHATSSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How's life?";
}

func int DIA_AMB_CITYGUIDE_WHATSSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITYGUIDE_WHATSSUP_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    if (C_FASTTRAVEL_IAMCITYGUIDE(SELF)) {
        if ((KAPITEL) <= (3)) {
            B_SAY(SELF, OTHER, "$AMB_ARXGUIDE_CITY_HOWSTHINGS_CH2TO3");
        } else {
            B_SAY(SELF, OTHER, "$AMB_ARXGUIDE_CITY_HOWSTHINGS_CH4TO5");
        };
    };
    if (C_FASTTRAVEL_IAMARAXOS(SELF)) {
        if ((KAPITEL) <= (3)) {
            B_SAY(SELF, OTHER, "$AMB_ARXGUIDE_ISLAND_HOWSTHINGS_CH2TO3");
        } else {
            B_SAY(SELF, OTHER, "$AMB_ARXGUIDE_ISLAND_HOWSTHINGS_CH4TO5");
        };
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_CITY_GUIDE(var C_NPC SLF) {
    DIA_AMB_CITYGUIDE_ABOUTGUILD.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITYGUIDE_KING.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITYGUIDE_WHATSSUP.NPC = HLP_GETINSTANCEID(SLF);
}
