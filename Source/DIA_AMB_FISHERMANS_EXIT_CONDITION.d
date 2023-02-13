func int DIA_AMB_FISHERMANS_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_FISHERMANS_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_FISHERMANS_ABOUT(C_INFO) {
    NR = 1;
    CONDITION = DIA_AMB_FISHERMANS_ABOUT_CONDITION;
    INFORMATION = DIA_AMB_FISHERMANS_ABOUT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How's the work going?";
}

func int DIA_AMB_FISHERMANS_ABOUT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_FISHERMANS_ABOUT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_AboutWork");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_MALE_HOWSWORK_V1");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_MALE_HOWSWORK_V2");
    };
    if ((((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) || ((SELF.VOICE) == (64))) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_MALE_HOWSWORK_V3");
    };
    if (((SELF.VOICE) == (33)) || ((SELF.VOICE) == (69))) {
        AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_FEMALE_HOWSWORK_V1");
    };
    if ((((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) || ((SELF.VOICE) == (32))) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_FEMALE_HOWSWORK_V2");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_FISHERMANS_WHATSUP(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_FISHERMANS_WHATSUP_CONDITION;
    INFORMATION = DIA_AMB_FISHERMANS_WHATSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What can you tell me about this area?";
}

func int DIA_AMB_FISHERMANS_WHATSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_FISHERMANS_WHATSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_AboutThisPlace");
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_MALE_NEIGHBORHOOD_V1_01");
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_MALE_NEIGHBORHOOD_V1_02");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_MALE_NEIGHBORHOOD_V2_01");
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_MALE_NEIGHBORHOOD_V2_02");
    };
    if ((((SELF.VOICE) == (28)) || ((SELF.VOICE) == (61))) || ((SELF.VOICE) == (64))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_MALE_NEIGHBORHOOD_V3_01");
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_MALE_NEIGHBORHOOD_V3_02");
    };
    if ((SELF.VOICE) == (33)) {
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_FEMALE_NEIGHBORHOOD_V1_01");
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_FEMALE_NEIGHBORHOOD_V1_02");
    };
    if (((SELF.VOICE) == (16)) || ((SELF.VOICE) == (34))) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_FEMALE_NEIGHBORHOOD_V2_01");
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_FEMALE_NEIGHBORHOOD_V2_02");
    };
    if (((SELF.VOICE) == (69)) || ((SELF.VOICE) == (32))) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_FEMALE_NEIGHBORHOOD_V3_01");
        B_SAY(SELF, OTHER, "$AMB_FISHERMANS_FEMALE_NEIGHBORHOOD_V3_02");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_FISHERMANS(var C_NPC SLF) {
    DIA_AMB_FISHERMANS_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_FISHERMANS_ABOUT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_FISHERMANS_WHATSUP.NPC = HLP_GETINSTANCEID(SLF);
}
