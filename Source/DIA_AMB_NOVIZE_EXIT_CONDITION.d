func int DIA_AMB_NOVIZE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_NOVIZE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_NOVIZE_ABOUT(C_INFO) {
    NR = 2;
    CONDITION = DIA_AMB_NOVIZE_ABOUT_CONDITION;
    INFORMATION = DIA_AMB_NOVIZE_ABOUT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What can you tell me about the monastery?";
}

func int DIA_AMB_NOVIZE_ABOUT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_NOVIZE_ABOUT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutKloster");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (72))) || ((SELF.VOICE) == (49))) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_NOVICE_ABOUTMONASTARY_V1");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        B_SAY(SELF, OTHER, "$AMB_NOVICE_ABOUTMONASTARY_V2");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (64))) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_NOVICE_ABOUTMONASTARY_V3");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_NOVIZE_WATERMAGES(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_NOVIZE_WATERMAGES_CONDITION;
    INFORMATION = DIA_AMB_NOVIZE_WATERMAGES_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What can you tell me about the Water Mages?";
}

func int DIA_AMB_NOVIZE_WATERMAGES_CONDITION() {
    return TRUE;
}

func void DIA_AMB_NOVIZE_WATERMAGES_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutWaterMages");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (72))) || ((SELF.VOICE) == (49))) {
        B_SAY(SELF, OTHER, "$AMB_NOVICE_ABOUTWATERMAGES_V1");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        B_SAY(SELF, OTHER, "$AMB_NOVICE_ABOUTWATERMAGES_V2");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (64))) {
        B_SAY(SELF, OTHER, "$AMB_NOVICE_ABOUTWATERMAGES_V3");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_NOVIZE_WHATSSUP(C_INFO) {
    NR = 4;
    CONDITION = DIA_AMB_NOVIZE_WHATSSUP_CONDITION;
    INFORMATION = DIA_AMB_NOVIZE_WHATSSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_AMB_NOVIZE_WHATSSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_NOVIZE_WHATSSUP_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (72))) || ((SELF.VOICE) == (49))) {
        AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_NOVICE_WHATSNEW_V1");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_NOVICE_WHATSNEW_V2");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (64))) {
        B_SAY(SELF, OTHER, "$AMB_NOVICE_WHATSNEW_V3");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_NOVIZE(var C_NPC SLF) {
    DIA_AMB_NOVIZE_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_NOVIZE_ABOUT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_NOVIZE_WATERMAGES.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_NOVIZE_WHATSSUP.NPC = HLP_GETINSTANCEID(SLF);
}

