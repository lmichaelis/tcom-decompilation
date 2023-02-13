var int TIMOWILLREMEMBERTHAT;
instance DIA_TIMO_Q102_HELLO(C_INFO) {
    NPC = 51532;
    NR = 1;
    CONDITION = DIA_TIMO_Q102_HELLO_CONDITION;
    INFORMATION = DIA_TIMO_Q102_HELLO_INFO;
    DESCRIPTION = "Are you all right?";
}

func int DIA_TIMO_Q102_HELLO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q102)) == (LOG_SUCCESS)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TIMO_Q102_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_Q102_Hello_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q102_Hello_06_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q102_Hello_06_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_Q102_Hello_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q102_Hello_06_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_Q102_Hello_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q102_Hello_06_06");
    INFO_CLEARCHOICES(91318);
    INFO_ADDCHOICE(91318, "I didn't help you because I felt sorry for you.", 91321);
    INFO_ADDCHOICE(91318, "Oh, come on. I did what anyone would do in my position.", 91322);
}

func void DIA_TIMO_Q102_HELLO_DONTTHINK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_Q102_Hello_dontthink_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q102_Hello_dontthink_06_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_Q102_Hello_dontthink_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_Q102_Hello_dontthink_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q102_Hello_dontthink_06_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q102_Hello_dontthink_06_05");
    TIMOWILLREMEMBERTHAT = TRUE;
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_TIMO_Q102_HELLO_COMEON() {
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_Q102_Hello_comeon_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q102_Hello_06_07");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_TIMO_HOWAREYOU(C_INFO) {
    NPC = 51532;
    NR = 1;
    CONDITION = DIA_TIMO_HOWAREYOU_CONDITION;
    INFORMATION = DIA_TIMO_HOWAREYOU_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you going to do now?";
}

func int DIA_TIMO_HOWAREYOU_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 91318)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TIMO_HOWAREYOU_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_HowAreYou_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_HowAreYou_06_01");
}

instance DIA_TIMO_Q104_WORKFORALBYN(C_INFO) {
    NPC = 51532;
    NR = 1;
    CONDITION = DIA_TIMO_Q104_WORKFORALBYN_CONDITION;
    INFORMATION = DIA_TIMO_Q104_WORKFORALBYN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How's life?";
}

func int DIA_TIMO_Q104_WORKFORALBYN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q104)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 87695))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TIMO_Q104_WORKFORALBYN_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q104_WorkForAlbyn_06_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q104_WorkForAlbyn_06_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_Q104_WorkForAlbyn_15_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_Q104_WorkForAlbyn_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q104_WorkForAlbyn_06_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_Q104_WorkForAlbyn_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q104_WorkForAlbyn_06_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_Q104_WorkForAlbyn_06_09");
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    B_STANDUP();
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q104, LOG_Q104_TIMO);
    NPC_EXCHANGEROUTINE(SELF, "Q104Wait");
    Q104_TIMOBROTHERLYWORK = 1;
    B_STARTOTHERROUTINE(BAU_11024_FARMER, "Pub");
}

instance DIA_TIMO_GREATMEETING(C_INFO) {
    NPC = 51532;
    NR = 1;
    CONDITION = DIA_TIMO_GREATMEETING_CONDITION;
    INFORMATION = DIA_TIMO_GREATMEETING_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_TIMO_GREATMEETING_CONDITION() {
    if ((TIMOEVENTREADY) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TIMO_GREATMEETING_LESSON() {
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_GreatMeeting_Lesson_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_GreatMeeting_Lesson_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_GreatMeeting_Lesson_15_03");
    PRINTSCREEN(PRINT_YOUTEACH, -(1), -(1), FONT_SCREEN, 2);
    HERO.LP = (HERO.LP) + (LP_FROMTIMO);
    PRINTSCREENS(CONCATSTRINGS(PRINT_LEARNLP, INTTOSTRING(LP_FROMTIMO)), -(1), YPOS_LOGENTRY, FONT_SCREENSMALL, 2);
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_Lesson_03_05");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_TIMO_GREATMEETING_INFO() {
    B_STANDUP();
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_03_01");
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_GreatMeeting_15_02");
    if ((HERO.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_03_03");
    };
    if ((HERO.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_03_04");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_GreatMeeting_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_03_08");
    INFO_ADDCHOICE(91329, "Well, a lesson with me will cost you...", 91334);
    INFO_ADDCHOICE(91329, "Sure, no problem!", 91335);
    INFO_ADDCHOICE(91329, "Sorry, I'm not fit to be a teacher.", 91333);
}

func void DIA_TIMO_GREATMEETING_MARVINISNOOB() {
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_GreatMeeting_MarvinIsNoob_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_GreatMeeting_MarvinIsNoob_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_MarvinIsNoob_03_03");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_TIMO_GREATMEETING_GIVEMONEY() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_GreatMeeting_GiveMoney_15_01");
    if ((TIMOWILLREMEMBERTHAT) == (FALSE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_GiveMoney_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_GiveMoney_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_GiveMoney_03_04");
    CREATEINVITEMS(SELF, 34203, EVENT_TIMOSGOLD);
    B_GIVEINVITEMS(SELF, OTHER, 34203, EVENT_TIMOSGOLD);
    DIA_TIMO_GREATMEETING_LESSON();
}

func void DIA_TIMO_GREATMEETING_ALTRUIST() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_GreatMeeting_Altruist_15_01");
    if ((TIMOWILLREMEMBERTHAT) == (FALSE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_Altruist_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_Altruist_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Timo_GreatMeeting_Altruist_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Timo_GreatMeeting_Altruist_03_06");
    B_GIVEPLAYERXP(XP_EVENT_TIMOGUILD);
    DIA_TIMO_GREATMEETING_LESSON();
}

instance DIA_TIMO_AMBIENT(C_INFO) {
    NPC = 51532;
    NR = 950;
    CONDITION = DIA_TIMO_AMBIENT_CONDITION;
    INFORMATION = DIA_TIMO_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_TIMO_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 91318)) {
        if (((LOG_GETSTATUS(MIS_Q104)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 87695))) {
            return FALSE;
        };
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_TIMO_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if ((TIMOEVENTREADY) == (FALSE)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Timo_Ambient_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Timo_Ambient_03_02");
    };
    if (NPC_HASGUILDARMOREQUIPPED(SELF, GIL_SLD)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Timo_Ambient_03_03");
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Timo_Ambient_03_04");
    };
    if (NPC_HASGUILDARMOREQUIPPED(SELF, GIL_MIL)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Timo_Ambient_03_05");
        AI_STARTFACEANI(SELF, "S_DISGUST", 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Timo_Ambient_03_06");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

