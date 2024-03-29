instance DIA_WIDOW_EXIT(C_INFO) {
    NPC = 54789;
    NR = 999;
    CONDITION = DIA_WIDOW_EXIT_CONDITION;
    INFORMATION = DIA_WIDOW_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WIDOW_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WIDOW_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WIDOW_NS60_START(C_INFO) {
    NPC = 54789;
    NR = 1;
    CONDITION = DIA_WIDOW_NS60_START_CONDITION;
    INFORMATION = DIA_WIDOW_NS60_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WIDOW_NS60_START_CONDITION() {
    if (((SELF.AIVAR[0]) != (FIGHT_LOST)) && ((SELF.AIVAR[0]) != (FIGHT_WON))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WIDOW_NS60_START_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_Start_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Widow_NS60_Start_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_Start_03_03");
}

instance DIA_WIDOW_NS60_STORY(C_INFO) {
    NPC = 54789;
    NR = 2;
    CONDITION = DIA_WIDOW_NS60_STORY_CONDITION;
    INFORMATION = DIA_WIDOW_NS60_STORY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Go ahead.";
}

func int DIA_WIDOW_NS60_STORY_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 68464)) && ((SELF.AIVAR[0]) != (FIGHT_LOST))) && ((SELF.AIVAR[0]) != (FIGHT_WON))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WIDOW_NS60_STORY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Widow_NS60_Story_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Widow_NS60_Story_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_Story_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_Story_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_Story_03_05");
}

instance DIA_WIDOW_NS60_STORY2(C_INFO) {
    NPC = 54789;
    NR = 3;
    CONDITION = DIA_WIDOW_NS60_STORY2_CONDITION;
    INFORMATION = DIA_WIDOW_NS60_STORY2_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Let me guess... He was sent to the front?";
}

func int DIA_WIDOW_NS60_STORY2_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 68467)) && ((SELF.AIVAR[0]) != (FIGHT_LOST))) && ((SELF.AIVAR[0]) != (FIGHT_WON))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WIDOW_NS60_STORY2_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Widow_NS60_Story2_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_Story2_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_Story2_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_Story2_03_04");
}

func void DIA_WIDOW_NS60_GOLD() {
    AI_OUTPUT(OTHER, SELF, "IA_Widow_NS60_Gold_15_01");
    AI_OUTPUT(SELF, OTHER, "IA_Widow_NS60_Gold_03_02");
}

instance DIA_WIDOW_NS60_STORY3(C_INFO) {
    NPC = 54789;
    NR = 4;
    CONDITION = DIA_WIDOW_NS60_STORY3_CONDITION;
    INFORMATION = DIA_WIDOW_NS60_STORY3_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What about your store?";
}

func int DIA_WIDOW_NS60_STORY3_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 68470)) && ((SELF.AIVAR[0]) != (FIGHT_LOST))) && ((SELF.AIVAR[0]) != (FIGHT_WON))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WIDOW_NS60_STORY3_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Widow_NS60_Story3_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_Story3_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_Story3_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_Story3_03_04");
    NPC_EXCHANGEROUTINE(SELF, TOT);
    INFO_ADDCHOICE(68474, "Sorry, I don't have any gold on me.", 68477);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (WIDOW_WANTSGOLDV1)) {
        INFO_ADDCHOICE(68474, DIALOG_GIVE10G, 68478);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (WIDOW_WANTSGOLDV2)) {
        INFO_ADDCHOICE(68474, DIALOG_GIVE50G, 68479);
    };
    if ((NPC_HASITEMS(OTHER, 34203)) >= (WIDOW_WANTSGOLDV3)) {
        INFO_ADDCHOICE(68474, DIALOG_GIVE150G, 68480);
    };
}

func void DIA_WIDOW_NS60_NOGOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Widow_NS60_NoGold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_NoGold_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_WIDOW_NS60_GOLD10() {
    DIA_WIDOW_NS60_GOLD();
    B_GIVEINVITEMS(OTHER, SELF, 34203, WIDOW_WANTSGOLDV1);
    B_GIVEPLAYERXP(XP_EVENT_WIDOWV1);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_WIDOW_NS60_GOLD50() {
    DIA_WIDOW_NS60_GOLD();
    B_GIVEINVITEMS(OTHER, SELF, 34203, WIDOW_WANTSGOLDV2);
    B_GIVEPLAYERXP(XP_EVENT_WIDOWV2);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_WIDOW_NS60_GOLD150() {
    DIA_WIDOW_NS60_GOLD();
    B_GIVEINVITEMS(OTHER, SELF, 34203, WIDOW_WANTSGOLDV3);
    B_GIVEPLAYERXP(XP_EVENT_WIDOWV3);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WIDOW_NS60_END(C_INFO) {
    NPC = 54789;
    NR = 6;
    CONDITION = DIA_WIDOW_NS60_END_CONDITION;
    INFORMATION = DIA_WIDOW_NS60_END_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_WIDOW_NS60_END_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 68474)) || ((SELF.AIVAR[0]) == (FIGHT_LOST))) || ((SELF.AIVAR[0]) == (FIGHT_WON))) {
        if (NPC_ISINSTATE(SELF, 61599)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_WIDOW_NS60_END_INFO() {
    if ((SELF.AIVAR[0]) == (FIGHT_WON)) {
        AI_PLAYANI(SELF, RESERVED_CONST_STRING_38);
        NPC_EXCHANGEROUTINE(SELF, TOT);
        AI_STOPPROCESSINFOS(SELF);
    };
    if ((SELF.AIVAR[0]) == (FIGHT_LOST)) {
        B_SAY(SELF, OTHER, RESERVED_CONST_STRING_18);
        AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
        NPC_EXCHANGEROUTINE(SELF, TOT);
        AI_STOPPROCESSINFOS(SELF);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Widow_NS60_end_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

