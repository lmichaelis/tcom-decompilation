func int DIA_AMB_CITY_CITIZEN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_CITIZEN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_CITY_CITIZEN_HOWTOJOIN(C_INFO) {
    NR = 5;
    CONDITION = DIA_AMB_CITY_CITIZEN_HOWTOJOIN_CONDITION;
    INFORMATION = DIA_AMB_CITY_CITIZEN_HOWTOJOIN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What should I do to become a citizen of the city?";
}

func int DIA_AMB_CITY_CITIZEN_HOWTOJOIN_CONDITION() {
    if (((((KAPITEL) == (2)) && ((HERO.GUILD) != (GIL_VLK))) && ((HERO.GUILD) != (GIL_SLD))) && ((HERO.GUILD) != (GIL_MIL))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_AMB_CITY_CITIZEN_HOWTOJOIN_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutJoiningVLK");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_CITIZENSHIP_V1");
    };
    if ((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (59))) {
        B_STANDUP();
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_CITIZENSHIP_V2");
        AI_PLAYANI(SELF, "T_PISSOFF");
    };
    if ((((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) || ((SELF.VOICE) == (64))) {
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_CITIZENSHIP_V3");
    };
    if ((((SELF.VOICE) == (33)) || ((SELF.VOICE) == (31))) || ((SELF.VOICE) == (69))) {
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_CITIZENSHIP_V1");
    };
    if ((((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) || ((SELF.VOICE) == (32))) {
        B_STANDUP();
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_CITIZENSHIP_V2");
        AI_PLAYANI(SELF, "T_PISSOFF");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_CITIZEN_ABOUTCITY(C_INFO) {
    NR = 6;
    CONDITION = DIA_AMB_CITY_CITIZEN_ABOUTCITY_CONDITION;
    INFORMATION = DIA_AMB_CITY_CITIZEN_ABOUTCITY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What should I know about the city?";
}

func int DIA_AMB_CITY_CITIZEN_ABOUTCITY_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_CITIZEN_ABOUTCITY_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutCity");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTCITY_V1_01");
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTCITY_V1_02");
    };
    if ((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (59))) {
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTCITY_V2_01");
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTCITY_V2_02");
    };
    if ((((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) || ((SELF.VOICE) == (64))) {
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTCITY_V3_01");
        if ((SELF.VOICE) != (64)) {
            B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTCITY_V3_02");
        };
    };
    if (((SELF.VOICE) == (33)) || ((SELF.VOICE) == (31))) {
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTCITY_V1_01");
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTCITY_V1_02");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTCITY_V2_01");
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTCITY_V2_02");
    };
    if (((SELF.VOICE) == (69)) || ((SELF.VOICE) == (32))) {
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTCITY_V3_01");
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTCITY_V3_02");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_CITIZEN_ABOUTSEWERS(C_INFO) {
    NR = 7;
    CONDITION = DIA_AMB_CITY_CITIZEN_ABOUTSEWERS_CONDITION;
    INFORMATION = DIA_AMB_CITY_CITIZEN_ABOUTSEWERS_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What should I know about sewers?";
}

func int DIA_AMB_CITY_CITIZEN_ABOUTSEWERS_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_CITIZEN_ABOUTSEWERS_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutSewers");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTSEWERS_V1_01");
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTSEWERS_V1_02");
    };
    if ((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTSEWERS_V2_01");
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTSEWERS_V2_02");
    };
    if ((((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) || ((SELF.VOICE) == (64))) {
        AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTSEWERS_V3_01");
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_ABOUTSEWERS_V3_02");
    };
    if ((SELF.VOICE) == (33)) {
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTSEWERS_V1_01");
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTSEWERS_V1_02");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTSEWERS_V2_01");
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTSEWERS_V2_02");
    };
    if (((SELF.VOICE) == (69)) || ((SELF.VOICE) == (32))) {
        AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTSEWERS_V3_01");
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_ABOUTSEWERS_V3_02");
    };
    if ((SELF.VOICE) == (31)) {
        AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
        B_STANDUP();
        AI_STOPLOOKAT(SELF);
        AI_PLAYANI(SELF, T_SEARCH_SCARED);
        DIA_IMBUSY_CALM();
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_CITY_CITIZEN_WHATSUP(C_INFO) {
    NR = 8;
    CONDITION = DIA_AMB_CITY_CITIZEN_WHATSUP_CONDITION;
    INFORMATION = DIA_AMB_CITY_CITIZEN_WHATSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_AMB_CITY_CITIZEN_WHATSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_CITY_CITIZEN_WHATSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if (((((((SELF.VOICE) == (33)) || ((SELF.VOICE) == (16))) || ((SELF.VOICE) == (69))) || ((SELF.VOICE) == (32))) || ((SELF.VOICE) == (31))) || ((SELF.VOICE) == (34))) {
        if ((KAPITEL) == (2)) {
            AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_WHATSNEW_CH2_V1");
        } else if ((KAPITEL) == (3)) {
            if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) {
                AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_WHATSNEW_CH3_WHITEDAY_V1");
            } else {
                AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_WHATSNEW_CH3_V1");
            };
        } else if ((KAPITEL) == (4)) {
            if ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) {
                if ((SELF.VOICE) == (32)) {
                    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
                    B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_WHATSNEW_CH4_V1");
                } else {
                    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
                    B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_WHATSNEW_CH4_GRAYSON_V1");
                };
            } else {
                AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
                B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_WHATSNEW_CH4_V1");
            };
        } else if ((KAPITEL) == (5)) {
            AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_CITIZEN_FEMALE_WHATSNEW_CH5_V1");
        };
    };
    if ((KAPITEL) == (2)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_WHATSNEW_CH2");
    };
    if ((KAPITEL) == (3)) {
        if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING))) {
            AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_WHATSNEW_CH3_WHITEDAY");
        } else {
            AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_WHATSNEW_CH3");
        };
    };
    if ((KAPITEL) == (4)) {
        if ((LOG_GETSTATUS(MIS_Q404)) == (LOG_SUCCESS)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_WHATSNEW_CH4_GRAYSON");
        } else {
            AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_WHATSNEW_CH4");
        };
    };
    if ((KAPITEL) == (5)) {
        AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_CITIZEN_MALE_WHATSNEW_CH5");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_CITY_CITIZEN(var C_NPC SLF) {
    DIA_AMB_CITY_CITIZEN_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_CITIZEN_HOWTOJOIN.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_CITIZEN_ABOUTCITY.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_CITIZEN_ABOUTSEWERS.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_CITY_CITIZEN_WHATSUP.NPC = HLP_GETINSTANCEID(SLF);
}

