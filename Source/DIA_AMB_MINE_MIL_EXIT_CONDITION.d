func int DIA_AMB_MINE_MIL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_MINE_MIL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_AMB_MINE_MIL_ABOUT(C_INFO) {
    NR = 1;
    CONDITION = DIA_AMB_MINE_MIL_ABOUT_CONDITION;
    INFORMATION = DIA_AMB_MINE_MIL_ABOUT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "What can you tell me about mine?";
}

func int DIA_AMB_MINE_MIL_ABOUT_CONDITION() {
    return TRUE;
}

func void DIA_AMB_MINE_MIL_ABOUT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_TellMeAboutMine");
    if ((LOG_GETSTATUS(MIS_SQ311)) != (LOG_SUCCESS)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_KINGS_MINE_GUARDS_ABOUTMINE_BEFOREQ311");
    };
    if ((((SELF.VOICE) == (37)) || ((SELF.VOICE) == (49))) || ((SELF.VOICE) == (72))) {
        B_SAY(SELF, OTHER, "$AMB_KINGS_MINE_GUARDS_ABOUTMINE_POSTSQ311_V1_01");
    };
    if (((((SELF.VOICE) == (6)) || ((SELF.VOICE) == (25))) || ((SELF.VOICE) == (67))) || ((SELF.VOICE) == (59))) {
        B_SAY(SELF, OTHER, "$AMB_KINGS_MINE_GUARDS_ABOUTMINE_POSTSQ311_V2_01");
    };
    if (((SELF.VOICE) == (28)) || ((SELF.VOICE) == (64))) {
        B_SAY(SELF, OTHER, "$AMB_KINGS_MINE_GUARDS_ABOUTMINE_POSTSQ311_V3_01");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_AMB_MINE_MIL_WHATSUP(C_INFO) {
    NR = 3;
    CONDITION = DIA_AMB_MINE_MIL_WHATSUP_CONDITION;
    INFORMATION = DIA_AMB_MINE_MIL_WHATSUP_INFO;
    PERMANENT = TRUE;
    IMPORTANT = FALSE;
    DESCRIPTION = "How are things on duty?";
}

func int DIA_AMB_MINE_MIL_WHATSUP_CONDITION() {
    return TRUE;
}

func void DIA_AMB_MINE_MIL_WHATSUP_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_AboutDuty");
    if ((LOG_GETSTATUS(MIS_SQ311)) != (LOG_SUCCESS)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_KINGS_MINE_GUARDS_HOWSDUTY_BEFOREQ311");
    };
    if ((KAPITEL) <= (3)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_KINGS_MINE_GUARDS_HOWSDUTY_POSTQ311_CH3");
    };
    if ((KAPITEL) == (4)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        B_SAY(SELF, OTHER, "$AMB_KINGS_MINE_GUARDS_HOWSDUTY_POSTQ311_CH4");
    };
    if ((KAPITEL) == (5)) {
        B_SAY(SELF, OTHER, "$AMB_KINGS_MINE_GUARDS_HOWSDUTY_POSTQ311_CH5");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void B_ASSIGNAMBIENTINFOS_AMB_MINE_MIL(var C_NPC SLF) {
    DIA_AMB_MINE_MIL_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_MINE_MIL_ABOUT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_AMB_MINE_MIL_WHATSUP.NPC = HLP_GETINSTANCEID(SLF);
}
