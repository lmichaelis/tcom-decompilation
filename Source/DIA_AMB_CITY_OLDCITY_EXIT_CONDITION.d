func int DIA_AMB_CITY_OLDCITY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_OLDCITY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_CITY_OLDCITY_ABOUTOLDCITY(C_INFO) {
    NR = 2;
    CONDITION = DIA_AMB_CITY_OLDCITY_ABOUTOLDCITY_CONDITION;
    INFORMATION = DIA_AMB_CITY_OLDCITY_ABOUTOLDCITY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What should I know about the Old Town?";
}

func int DIA_AMB_CITY_OLDCITY_ABOUTOLDCITY_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_OLDCITY_ABOUTOLDCITY_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutOldCity");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    if (((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) {
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTOLDTOWN_V1_01");
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTOLDTOWN_V1_02");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTOLDTOWN_V2_01");
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTOLDTOWN_V2_02");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (64))) {
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTOLDTOWN_V3_01");
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTOLDTOWN_V3_02");
    };
    if (((SELF.VOICE) == (33)) || ((SELF.VOICE) == (31))) {
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTOLDTOWN_V1_01");
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTOLDTOWN_V1_02");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        if ((SELF.VOICE) != (16)) {
            B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTOLDTOWN_V2_01");
        };
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTOLDTOWN_V2_02");
    };
    if (((SELF.VOICE) == (69)) || ((SELF.VOICE) == (32))) {
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTOLDTOWN_V3_01");
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTOLDTOWN_V3_02");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_OLDCITY_MORRIS(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_CITY_OLDCITY_MORRIS_CONDITION;
    INFORMATION = DIA_AMB_CITY_OLDCITY_MORRIS_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "Tell me about Morris.";
}

func int DIA_AMB_CITY_OLDCITY_MORRIS_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_OLDCITY_MORRIS_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_OpinionAboutMorris");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    if (((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) {
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTMORRIS_V1_01");
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTMORRIS_V1_02");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTMORRIS_V2_01");
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTMORRIS_V2_02");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (64))) {
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTMORRIS_V3_01");
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_ABOUTMORRIS_V3_02");
    };
    if (((SELF.VOICE) == (33)) || ((SELF.VOICE) == (31))) {
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTMORRIS_V1_01");
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTMORRIS_V1_02");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTMORRIS_V2_01");
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTMORRIS_V2_02");
    };
    if (((SELF.VOICE) == (69)) || ((SELF.VOICE) == (32))) {
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTMORRIS_V3_01");
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_ABOUTMORRIS_V3_02");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_OLDCITY_WHATSSUP(C_INFO) {
    NR = 4;
    CONDITION = DIA_AMB_CITY_OLDCITY_WHATSSUP_CONDITION;
    INFORMATION = DIA_AMB_CITY_OLDCITY_WHATSSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_AMB_CITY_OLDCITY_WHATSSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_OLDCITY_WHATSSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if (((((((SELF.VOICE) == (33)) || ((SELF.VOICE) == (16))) || ((SELF.VOICE) == (69))) || ((SELF.VOICE) == (32))) || ((SELF.VOICE) == (31))) || ((SELF.VOICE) == (34))) {
        if ((KAPITEL) == (2)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_WHATSNEW_CH2");
        } else if ((KAPITEL) == (3)) {
            if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) {
                AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_WHATSNEW_CH3_WHITEDAY");
            } else {
                AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_WHATSNEW_CH3");
            };
        } else if ((KAPITEL) == (4)) {
            if ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) {
                AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_WHATSNEW_CH4_GRAYSON");
            } else {
                AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_OLDTOWN_FEMALE_WHATSNEW_CH4");
            };
        } else if ((KAPITEL) == (5)) {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_OldCity_FEMALE_HOWSLIFE_CH5");
        };
    };
    if ((KAPITEL) == (2)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_WHATSNEW_CH2");
    };
    if ((KAPITEL) == (3)) {
        if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) {
            AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_WHATSNEW_CH3_WHITEDAY");
        } else {
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_WHATSNEW_CH3");
        };
    };
    if ((KAPITEL) == (4)) {
        if ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_WHATSNEW_CH4_GRAYSON");
        } else {
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_OLDTOWN_MALE_WHATSNEW_CH4");
        };
    };
    if ((KAPITEL) == (5)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_OldCity_MALE_HOWSLIFE_CH5");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_CITY_OLDCITY(var C_NPC SLF) {
    DIA_AMB_CITY_OLDCITY_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_OLDCITY_ABOUTOLDCITY.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_OLDCITY_MORRIS.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_OLDCITY_WHATSSUP.NPC = HLP_GETINSTANCEID(SLF);
}

