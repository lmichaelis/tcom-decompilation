instance DIA_11302_BODYGUARD_EXIT(C_INFO) {
    NPC = 53541;
    NR = 999;
    CONDITION = DIA_11302_BODYGUARD_EXIT_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_11302_BODYGUARD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_11302_BODYGUARD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11302_BODYGUARD_BODYGUARDEVENT(C_INFO) {
    NPC = 53541;
    NR = 1;
    CONDITION = DIA_11302_BODYGUARD_BODYGUARDEVENT_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_BODYGUARDEVENT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11302_BODYGUARD_BODYGUARDEVENT_CONDITION() {
    return TRUE;
}

func void DIA_11302_BODYGUARD_BODYGUARDEVENT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_BodyGuardEvent_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_BodyGuardEvent_03_02");
}

instance DIA_11302_BODYGUARD_WHATISGOINGON(C_INFO) {
    NPC = 53541;
    NR = 2;
    CONDITION = DIA_11302_BODYGUARD_WHATISGOINGON_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_WHATISGOINGON_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What is it?";
}

func int DIA_11302_BODYGUARD_WHATISGOINGON_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 72493)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11302_BODYGUARD_WHATISGOINGON_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_11302_Bodyguard_WhatIsGoingOn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_WhatIsGoingOn_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_11302_Bodyguard_WhatIsGoingOn_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_WhatIsGoingOn_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_WhatIsGoingOn_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_11302_Bodyguard_WhatIsGoingOn_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_WhatIsGoingOn_03_07");
}

instance DIA_11302_BODYGUARD_TELLMEALREADY(C_INFO) {
    NPC = 53541;
    NR = 3;
    CONDITION = DIA_11302_BODYGUARD_TELLMEALREADY_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_TELLMEALREADY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Then what is it?";
}

func int DIA_11302_BODYGUARD_TELLMEALREADY_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 72496)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11302_BODYGUARD_TELLMEALREADY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_11302_Bodyguard_TellMeAlready_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_TellMeAlready_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_11302_Bodyguard_TellMeAlready_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_TellMeAlready_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_TellMeAlready_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_TellMeAlready_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_TellMeAlready_03_07");
}

instance DIA_11302_BODYGUARD_HAIAMINDANGER(C_INFO) {
    NPC = 53541;
    NR = 4;
    CONDITION = DIA_11302_BODYGUARD_HAIAMINDANGER_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_HAIAMINDANGER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You want me to get beat up?";
}

func int DIA_11302_BODYGUARD_HAIAMINDANGER_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 72499)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11302_BODYGUARD_HAIAMINDANGER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_11302_Bodyguard_HaIAmInDanger_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_HaIAmInDanger_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_11302_Bodyguard_HaIAmInDanger_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_HaIAmInDanger_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_HaIAmInDanger_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_HaIAmInDanger_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_HaIAmInDanger_03_07");
    LOG_CREATETOPIC(TOPIC_SQ314, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ314), TOPIC_SQ314, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ314, LOG_SQ314_START);
}

instance DIA_11302_BODYGUARD_BEATME(C_INFO) {
    NPC = 53541;
    NR = 5;
    CONDITION = DIA_11302_BODYGUARD_BEATME_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_BEATME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "All right, I'll help you.";
}

func int DIA_11302_BODYGUARD_BEATME_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ314)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 72502))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11302_BODYGUARD_BEATME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_11302_Bodyguard_BeatMe_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_BeatMe_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_BeatMe_03_03");
    NPC_EXCHANGEROUTINE(VLK_11302_BODYGUARD, TOT);
    TRAP_M5_CH3_TALKDAY = WLD_GETDAY();
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ314, LOG_SQ314_FORSURE);
}

instance DIA_11302_BODYGUARD_FIRSTAMBIENT(C_INFO) {
    NPC = 53541;
    NR = 6;
    CONDITION = DIA_11302_BODYGUARD_FIRSTAMBIENT_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_FIRSTAMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_11302_BODYGUARD_FIRSTAMBIENT_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ314)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 72505))) && (NPC_ISINSTATE(SELF, 61599))) && ((TRAP17_SPAWNEDPHASE2) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11302_BODYGUARD_FIRSTAMBIENT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_FirstAmbient_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11302_BODYGUARD_HARDERDADDY(C_INFO) {
    NPC = 53541;
    NR = 1;
    CONDITION = DIA_11302_BODYGUARD_HARDERDADDY_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_HARDERDADDY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11302_BODYGUARD_HARDERDADDY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ314)) == (LOG_RUNNING)) && ((TRAP17_SPAWNEDPHASE2) == (TRUE))) && (NPC_KNOWSINFO(OTHER, 72529))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11302_BODYGUARD_HARDERDADDY_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_HarderDaddy_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_HarderDaddy_03_02");
    HERO.AIVAR[96] = 10;
    VLK_11302_BODYGUARD.AIVAR[96] = 10;
    VLK_11302_BODYGUARD.AIVAR[45] = AF_RUNNING;
    HERO.AIVAR[95] = TRUE;
    HERO.AIVAR[94] = TRUE;
    VLK_11302_BODYGUARD.AIVAR[94] = TRUE;
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
}

instance DIA_11302_BODYGUARD_AFTERFIGHT(C_INFO) {
    NPC = 53541;
    NR = 2;
    CONDITION = DIA_11302_BODYGUARD_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11302_BODYGUARD_AFTERFIGHT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ314)) == (LOG_RUNNING)) {
        if (NPC_KNOWSINFO(OTHER, 72511)) {
            if (((SELF.AIVAR[64]) == (FALSE)) && ((SELF.AIVAR[0]) != (FIGHT_NONE))) {
                if ((SELF.AIVAR[45]) != (AF_NONE)) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_11302_BODYGUARD_AFTERFIGHT_INFO() {
    VLK_11302_BODYGUARD.FLAGS = 2;
    VLK_11302_BODYGUARD.ATTRIBUTE[0] = VLK_11302_BODYGUARD.ATTRIBUTE[1];
    TRAP_M5_CH3_TALKDAY02 = WLD_GETDAY();
    NPC_EXCHANGEROUTINE(VLK_11302_BODYGUARD, TOT2);
    B_STARTOTHERROUTINE(VLK_11303_OLDMAN, TOT);
    if ((VLK_11302_BODYGUARD.AIVAR[0]) == (FIGHT_WON)) {
        TRAP17_OUTCOME = 1;
        AI_LOGENTRY(TOPIC_SQ314, LOG_SQ314_MYHEAD);
        AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterFight_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterFight_03_02");
    };
    if ((VLK_11302_BODYGUARD.AIVAR[0]) == (FIGHT_LOST)) {
        TRAP17_OUTCOME = 2;
        AI_LOGENTRY(TOPIC_SQ314, LOG_SQ314_IAMWINNER);
        AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterFight_03_03");
    };
    AI_LOGENTRY(TOPIC_SQ314, LOG_SQ314_IAMWINNER);
    TRAP17_OUTCOME = 3;
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterFight_03_04");
    AI_STOPPROCESSINFOS(SELF);
    VLK_11302_BODYGUARD.AIVAR[45] = AF_NONE;
    VLK_11302_BODYGUARD.AIVAR[64] = TRUE;
    HERO.AIVAR[95] = FALSE;
    HERO.AIVAR[94] = FALSE;
    VLK_11302_BODYGUARD.AIVAR[94] = FALSE;
}

instance DIA_11302_BODYGUARD_AMBIENT(C_INFO) {
    NPC = 53541;
    NR = 2;
    CONDITION = DIA_11302_BODYGUARD_AMBIENT_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_11302_BODYGUARD_AMBIENT_CONDITION() {
    if (((NPC_ISINSTATE(SELF, 61599)) && ((TRAP17_OUTCOME) != (0))) && ((TRAP17_SPAWNEDPHASE3) == (FALSE))) {
        if (NPC_KNOWSINFO(OTHER, 72511)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_11302_BODYGUARD_AMBIENT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_Ambient_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11302_BODYGUARD_AFTEREVENT(C_INFO) {
    NPC = 53541;
    NR = 1;
    CONDITION = DIA_11302_BODYGUARD_AFTEREVENT_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_AFTEREVENT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_11302_BODYGUARD_AFTEREVENT_CONDITION() {
    if ((TRAP17_SPAWNEDPHASE3) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_11302_BODYGUARD_AFTEREVENT_INFO() {
    if ((TRAP17_OUTCOME) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterEvent_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterEvent_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_11302_Bodyguard_AfterEvent_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterEvent_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterEvent_03_05");
        AI_LOGENTRY(TOPIC_SQ314, LOG_SQ314_SUCCESS_V1);
        LOG_SETSTATUS(_@(MIS_SQ314), TOPIC_SQ314, LOG_SUCCESS);
        CREATEINVITEMS(SELF, 34203, EVENT_TRAP17_ENDINGV1);
        B_GIVEINVITEMS(SELF, OTHER, 34203, EVENT_TRAP17_ENDINGV1);
        B_GIVEPLAYERXP(XP_EVENT_BODYGUARD_ENDING_V1);
    };
    if ((TRAP17_OUTCOME) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterEvent_03_06");
    };
    if ((TRAP17_OUTCOME) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterEvent_03_07");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterEvent_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterEvent_03_09");
    AI_OUTPUT(OTHER, SELF, "DIA_11302_Bodyguard_AfterEvent_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_AfterEvent_03_11");
    CREATEINVITEMS(SELF, 34203, EVENT_TRAP17_ENDINGV2);
    B_GIVEINVITEMS(SELF, OTHER, 34203, EVENT_TRAP17_ENDINGV2);
    B_GIVEPLAYERXP(XP_EVENT_BODYGUARD_ENDING_V2);
    AI_LOGENTRY(TOPIC_SQ314, LOG_SQ314_SUCCESS_V2);
    LOG_SETSTATUS(_@(MIS_SQ314), TOPIC_SQ314, LOG_SUCCESS);
    NPC_EXCHANGEROUTINE(VLK_11302_BODYGUARD, TOT);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_11302_BODYGUARD_ENDINGAMBIENT(C_INFO) {
    NPC = 53541;
    NR = 2;
    CONDITION = DIA_11302_BODYGUARD_ENDINGAMBIENT_CONDITION;
    INFORMATION = DIA_11302_BODYGUARD_ENDINGAMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_11302_BODYGUARD_ENDINGAMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 72520)) {
        if (NPC_ISINSTATE(SELF, 61599)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_11302_BODYGUARD_ENDINGAMBIENT_INFO() {
    if ((TRAP17_OUTCOME) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_EndingAmbient_03_01");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_11302_Bodyguard_EndingAmbient_03_02");
    AI_STOPPROCESSINFOS(SELF);
}
