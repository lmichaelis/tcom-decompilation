func int DIA_AMB_FARMERCITY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_FARMERCITY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_FARMERCITY_ABOUT(C_INFO) {
    NR = 1;
    CONDITION = DIA_AMB_FARMERCITY_ABOUT_CONDITION;
    INFORMATION = DIA_AMB_FARMERCITY_ABOUT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How's the work going?";
}

func int DIA_AMB_FARMERCITY_ABOUT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_FARMERCITY_ABOUT_INFO() {
    var int RNGANWSER;
    B_SAY(OTHER, SELF, "$MARVIN_AboutWork");
    RNGANWSER = HLP_RANDOM(2);
    if ((RNGANWSER) == (0)) {
        B_SAY(SELF, OTHER, "$IMBUSY_CALM");
    };
    if ((RNGANWSER) == (1)) {
        B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_FARMERCITY_WHATSUP(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_FARMERCITY_WHATSUP_CONDITION;
    INFORMATION = DIA_AMB_FARMERCITY_WHATSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What should I know about the city?";
}

func int DIA_AMB_FARMERCITY_WHATSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_FARMERCITY_WHATSUP_INFO() {
    var int RNGANWSER2;
    var int RNGANWSER;
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutCity");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FARMERS_CITY_MALE_ABOUTTHISPLACE_V1");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FARMERS_CITY_MALE_ABOUTTHISPLACE_V2_01");
        B_SAY(SELF, OTHER, "$AMB_FARMERS_CITY_MALE_ABOUTTHISPLACE_V2_02");
    };
    if ((((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) || ((SELF.VOICE) == (64))) {
        if ((((LOG_GETSTATUS(MIS_Q201)) == (LOG_SUCCESS)) || (((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING)) && ((GQ001_CANTRYENTERCITY) == (FALSE)))) || ((LOG_GETSTATUS(MIS_Q201)) == (0))) {
            RNGANWSER = HLP_RANDOM(2);
            if ((RNGANWSER) == (0)) {
                B_SAY(SELF, OTHER, "$IMBUSY_CALM");
            } else if ((RNGANWSER) == (1)) {
                B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
            };
        } else {
            AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_FARMERS_CITY_MALE_ABOUTTHISPLACE_V3_01");
            AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_FARMERS_CITY_MALE_ABOUTTHISPLACE_V3_02");
        };
    };
    if ((SELF.VOICE) == (33)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FARMERS_CITY_FEMALE_ABOUTTHISPLACE_V1");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FARMERS_CITY_FEMALE_ABOUTTHISPLACE_V2_01");
        B_SAY(SELF, OTHER, "$AMB_FARMERS_CITY_FEMALE_ABOUTTHISPLACE_V2_02");
    };
    if (((SELF.VOICE) == (69)) || ((SELF.VOICE) == (32))) {
        if ((((LOG_GETSTATUS(MIS_Q201)) == (LOG_SUCCESS)) || (((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING)) && ((GQ001_CANTRYENTERCITY) == (FALSE)))) || ((LOG_GETSTATUS(MIS_Q201)) == (0))) {
            RNGANWSER2 = HLP_RANDOM(2);
            if ((RNGANWSER2) == (0)) {
                B_SAY(SELF, OTHER, "$IMBUSY_CALM");
            } else if ((RNGANWSER2) == (1)) {
                B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
            };
        } else {
            AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_FARMERS_CITY_FEMALE_ABOUTTHISPLACE_V3_01");
            AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
            B_SAY(SELF, OTHER, "$AMB_FARMERS_CITY_FEMALE_ABOUTTHISPLACE_V3_02");
        };
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_FARMERCITY(var C_NPC SLF) {
    DIA_AMB_FARMERCITY_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_FARMERCITY_ABOUT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_FARMERCITY_WHATSUP.NPC = HLP_GETINSTANCEID(SLF);
}
