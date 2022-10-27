var int ALENA_SQ230_DEAL = 0;
var int ALENA_SQ230_GOLD = 0;
func void DIA_ALENA_SQ230_FISTTIME() {
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_FistTime_03_01");
}

func void DIA_ALENA_SQ230_SWORDTIME() {
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_SwordTime_03_01");
}

func void DIA_ALENA_SQ230_GOLD() {
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_01");
    if ((SQ230_FIGHTCOUNT) == (0)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_02");
        ALENA_SQ230_GOLD = 25;
    };
    if ((SQ230_FIGHTCOUNT) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_03");
        ALENA_SQ230_GOLD = 50;
    };
    if ((SQ230_FIGHTCOUNT) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_04");
        ALENA_SQ230_GOLD = 75;
    };
    if ((SQ230_FIGHTCOUNT) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_05");
        ALENA_SQ230_GOLD = 100;
    };
    if ((SQ230_FIGHTCOUNT) == (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_06");
        ALENA_SQ230_GOLD = 150;
    };
    if ((SQ230_FIGHTCOUNT) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_07");
        ALENA_SQ230_GOLD = 200;
    };
    if ((SQ230_FIGHTCOUNT) == (6)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_08");
        ALENA_SQ230_GOLD = 250;
    };
    if ((SQ230_FIGHTCOUNT) == (7)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_09");
        ALENA_SQ230_GOLD = 300;
    };
    if ((SQ230_FIGHTCOUNT) == (8)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_10");
        ALENA_SQ230_GOLD = 500;
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_11");
    ALENA_SQ230_GOLD = 1000;
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Gold_03_12");
    INFO_CLEARCHOICES(0x11d32);
    INFO_ADDCHOICE(0x11d32, "Maybe another time.", 0x11d1f);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (ALENA_SQ230_GOLD)) {
        INFO_ADDCHOICE(0x11d32, "I'd love to try my hand at it. (Pay)", 0x11d20);
    };
}

func void DIA_ALENA_SQ230_NOTNOW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alena_SQ230_NotNow_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_NotNow_03_02");
    INFO_CLEARCHOICES(0x11d32);
}

func void DIA_ALENA_SQ230_REALFIGHT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alena_SQ230_RealFight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_RealFight_03_02");
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, ALENA_SQ230_GOLD);
    SQ230_HERODOWN = FALSE;
    SQ230_RTFIGHTER = FALSE;
    SQ230_FCENEMYDOWN01 = FALSE;
    SQ230_FCENEMYDOWN02 = FALSE;
    SQ230_FIGHTLOG = FALSE;
    SQ230_SPAWNENEMY();
    SELF.AIVAR[95] = TRUE;
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ALENA_EXIT(C_INFO) {
    NPC = 0xd724;
    NR = 999;
    CONDITION = DIA_ALENA_EXIT_CONDITION;
    INFORMATION = DIA_ALENA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ALENA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ALENA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ALENA_SQ230_START(C_INFO) {
    NPC = 0xd724;
    NR = 1;
    CONDITION = DIA_ALENA_SQ230_START_CONDITION;
    INFORMATION = DIA_ALENA_SQ230_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ALENA_SQ230_START_CONDITION() {
    return TRUE;
}

func void DIA_ALENA_SQ230_START_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Start_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Start_03_02");
    INFO_CLEARCHOICES(0x11d24);
    INFO_ADDCHOICE(0x11d24, "I don't have time right now.", 0x11d27);
    INFO_ADDCHOICE(0x11d24, "What's the offer?", 0x11d2a);
}

func void DIA_ALENA_SQ230_NOTIME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alena_SQ230_NoTime_15_01");
    INFO_CLEARCHOICES(0x11d24);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ALENA_SQ230_DEAL(C_INFO) {
    NPC = 0xd724;
    NR = 3;
    CONDITION = DIA_ALENA_SQ230_DEAL_CONDITION;
    INFORMATION = DIA_ALENA_SQ230_DEAL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's the offer?";
}

func int DIA_ALENA_SQ230_DEAL_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x11d24)) && ((ALENA_SQ230_DEAL) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALENA_SQ230_DEAL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alena_SQ230_Deal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Deal_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Deal_03_03");
    ALENA_SQ230_DEAL = TRUE;
    LOG_CREATETOPIC(TOPIC_SQ230, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ230), TOPIC_SQ230, LOG_RUNNING);
    if ((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS)) {
        AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_STARTTOURNAMENT);
    };
    AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_START);
    INFO_CLEARCHOICES(0x11d24);
}

instance DIA_ALENA_ISTHATLEGAL(C_INFO) {
    NPC = 0xd724;
    NR = 5;
    CONDITION = DIA_ALENA_ISTHATLEGAL_CONDITION;
    INFORMATION = DIA_ALENA_ISTHATLEGAL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Is that legal?";
}

func int DIA_ALENA_ISTHATLEGAL_CONDITION() {
    if ((ALENA_SQ230_DEAL) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALENA_ISTHATLEGAL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alena_IsThatLegal_15_01");
    if (NPC_HASGUILDARMOREQUIPPED(HERO, GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_IsThatLegal_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_IsThatLegal_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_IsThatLegal_03_04");
}

instance DIA_ALENA_YOUKNOWTHERULES(C_INFO) {
    NPC = 0xd724;
    NR = 6;
    CONDITION = DIA_ALENA_YOUKNOWTHERULES_CONDITION;
    INFORMATION = DIA_ALENA_YOUKNOWTHERULES_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are the rules?";
}

func int DIA_ALENA_YOUKNOWTHERULES_CONDITION() {
    if ((ALENA_SQ230_DEAL) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALENA_YOUKNOWTHERULES_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Alena_YouKnowTheRules_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_YouKnowTheRules_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_YouKnowTheRules_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_YouKnowTheRules_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_YouKnowTheRules_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_YouKnowTheRules_03_06");
    AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_RULES);
}

func void DIA_ALENA_SQ230_TIMEFORFIGHT() {
    SQ230_PREVIOUSFIGHT = 0;
    if ((SQ230_FIGHTCOUNT) == (0)) {
        DIA_ALENA_SQ230_FISTTIME();
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_01");
        if ((SQ230_FIGHTLOG) == (FALSE)) {
            SQ230_FIGHTLOG = TRUE;
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_FIRSTFIGHT);
        };
    };
    if ((SQ230_FIGHTCOUNT) == (1)) {
        DIA_ALENA_SQ230_FISTTIME();
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_02");
        if ((SQ230_FIGHTLOG) == (FALSE)) {
            SQ230_FIGHTLOG = TRUE;
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_SECONDFIGHT);
        };
    };
    if ((SQ230_FIGHTCOUNT) == (2)) {
        DIA_ALENA_SQ230_SWORDTIME();
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_03");
        if ((SQ230_FIGHTLOG) == (FALSE)) {
            SQ230_FIGHTLOG = TRUE;
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_THIRDFIGHT);
        };
    };
    if ((SQ230_FIGHTCOUNT) == (3)) {
        DIA_ALENA_SQ230_SWORDTIME();
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_04");
        if ((SQ230_FIGHTLOG) == (FALSE)) {
            SQ230_FIGHTLOG = TRUE;
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_FOURTHFIGHT);
        };
    };
    if ((SQ230_FIGHTCOUNT) == (4)) {
        DIA_ALENA_SQ230_FISTTIME();
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_05");
        if ((SQ230_FIGHTLOG) == (FALSE)) {
            SQ230_FIGHTLOG = TRUE;
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_FIFTHFIGHT);
        };
    };
    if ((SQ230_FIGHTCOUNT) == (5)) {
        DIA_ALENA_SQ230_SWORDTIME();
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_06");
        if ((SQ230_FIGHTLOG) == (FALSE)) {
            SQ230_FIGHTLOG = TRUE;
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_SIXTHFIGHT);
        };
    };
    if ((SQ230_FIGHTCOUNT) == (6)) {
        DIA_ALENA_SQ230_SWORDTIME();
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_07");
        if ((SQ230_FIGHTLOG) == (FALSE)) {
            SQ230_FIGHTLOG = TRUE;
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_SEVENTHFIGHT);
        };
    };
    if ((SQ230_FIGHTCOUNT) == (7)) {
        DIA_ALENA_SQ230_FISTTIME();
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_09");
        if ((SQ230_FIGHTLOG) == (FALSE)) {
            SQ230_FIGHTLOG = TRUE;
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_EIGHTHFIGHT);
        };
    };
    if ((SQ230_FIGHTCOUNT) == (8)) {
        DIA_ALENA_SQ230_FISTTIME();
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_10");
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_11");
        if ((SQ230_FIGHTLOG) == (FALSE)) {
            SQ230_FIGHTLOG = TRUE;
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_NINTHFIGHT);
        };
    };
    if ((SQ230_FIGHTCOUNT) == (9)) {
        DIA_ALENA_SQ230_SWORDTIME();
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_12");
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_TimeForFight_03_13");
        if ((SQ230_FIGHTLOG) == (FALSE)) {
            SQ230_FIGHTLOG = TRUE;
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_TENTHFIGHT);
        };
    };
    DIA_ALENA_SQ230_GOLD();
}

instance DIA_ALENA_SQ230_TIME(C_INFO) {
    NPC = 0xd724;
    NR = 7;
    CONDITION = DIA_ALENA_SQ230_TIME_CONDITION;
    INFORMATION = DIA_ALENA_SQ230_TIME_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Can I fight in the arena?";
}

func int DIA_ALENA_SQ230_TIME_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ230)) == (LOG_RUNNING)) {
        if (NPC_KNOWSINFO(OTHER, 0x11d2e)) {
            if ((SQ230_PREVIOUSFIGHT) == (0)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALENA_SQ230_TIME_INFO() {
    INFO_CLEARCHOICES(0x11d32);
    AI_OUTPUT(OTHER, SELF, "DIA_Alena_SQ230_Time_15_01");
    if (WLD_ISTIME(19, 30, 2, 0)) {
        if ((SQ230_FIGHTCOUNT) != (9)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Time_03_02");
        };
        DIA_ALENA_SQ230_TIMEFORFIGHT();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Time_03_04");
}

func void DIA_ALENA_SQ230_PRELASTFIGHT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_PreLastFight_03_01");
    AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_GREATFINALE);
}

func void DIA_ALENA_SQ230_AFTERFIGHTBONUS() {
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFightBonus_03_01");
    if ((SQ230_FIGHTCOUNT) == (0)) {
        CREATEINVITEMS(SELF, 0x8632, 1);
    };
    if ((SQ230_FIGHTCOUNT) == (5)) {
        CREATEINVITEMS(SELF, 0x85f0, 1);
    };
    CREATEINVITEMS(SELF, 0x8346, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8346, 1);
}

instance DIA_ALENA_SQ230_AFTERFIGHT(C_INFO) {
    NPC = 0xd724;
    NR = 6;
    CONDITION = DIA_ALENA_SQ230_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_ALENA_SQ230_AFTERFIGHT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_ALENA_SQ230_AFTERFIGHT_CONDITION() {
    if (((SQ230_PREVIOUSFIGHT) == (2)) || ((SQ230_PREVIOUSFIGHT) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALENA_SQ230_AFTERFIGHT_INFO() {
    SELF.AIVAR[95] = FALSE;
    if ((SQ230_PREVIOUSFIGHT) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_01");
        if ((SQ230_FIGHTCOUNT) == (0)) {
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_FIRSTFIGHT_LOST);
        } else if ((SQ230_FIGHTCOUNT) == (1)) {
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_SECONDFIGHT_LOST);
        } else if ((SQ230_FIGHTCOUNT) == (2)) {
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_THIRDFIGHT_LOST);
        } else if ((SQ230_FIGHTCOUNT) == (3)) {
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_FOURTHFIGHT_LOST);
        } else if ((SQ230_FIGHTCOUNT) == (4)) {
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_FIFTHFIGHT_LOST);
        } else if ((SQ230_FIGHTCOUNT) == (5)) {
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_SIXTHFIGHT_LOST);
        } else if ((SQ230_FIGHTCOUNT) == (6)) {
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_SEVENTHFIGHT_LOST);
        } else if ((SQ230_FIGHTCOUNT) == (7)) {
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_EIGHTHFIGHT_LOST);
        } else {
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_NINTHFIGHT_LOST);
        };
    };
    if ((SQ230_PREVIOUSFIGHT) == (3)) {
        if ((SQ230_FIGHTCOUNT) == (0)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_02");
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_FIRSTFIGHT_WIN);
            B_GIVEPLAYERXP(XP_SQ230_TIER1);
        } else if ((SQ230_FIGHTCOUNT) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_03");
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_SECONDFIGHT_WIN);
            B_GIVEPLAYERXP(XP_SQ230_TIER1);
        } else if ((SQ230_FIGHTCOUNT) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_04");
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_THIRDFIGHT_WIN);
            B_GIVEPLAYERXP(XP_SQ230_TIER1);
        } else if ((SQ230_FIGHTCOUNT) == (3)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_05");
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_FOURTHFIGHT_WIN);
            B_GIVEPLAYERXP(XP_SQ230_TIER2);
        } else if ((SQ230_FIGHTCOUNT) == (4)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_06");
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_FIFTHFIGHT_WIN);
            B_GIVEPLAYERXP(XP_SQ230_TIER2);
        } else if ((SQ230_FIGHTCOUNT) == (5)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_07");
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_SIXTHFIGHT_WIN);
            B_GIVEPLAYERXP(XP_SQ230_TIER2);
        } else if ((SQ230_FIGHTCOUNT) == (6)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_08");
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_SEVENTHFIGHT_WIN);
            B_GIVEPLAYERXP(XP_SQ230_TIER3);
        } else if ((SQ230_FIGHTCOUNT) == (7)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_09");
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_EIGHTHFIGHT_WIN);
            B_GIVEPLAYERXP(XP_SQ230_TIER3);
        } else if ((SQ230_FIGHTCOUNT) == (8)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_11");
            AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_NINTHFIGHT_WIN);
            B_GIVEPLAYERXP(XP_SQ230_TIER4);
            DIA_ALENA_SQ230_PRELASTFIGHT();
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_12");
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_13");
            if ((OTHER.ATTRIBUTE[5]) >= (OTHER.ATTRIBUTE[4])) {
                CREATEINVITEMS(SELF, 0x9a37, 1);
            } else {
                CREATEINVITEMS(SELF, 0x9a36, 1);
                B_GIVEINVITEMS(SELF, OTHER, 0x9a36, 1);
            } else {
                AI_LOGENTRY(TOPIC_SQ230, LOG_SQ230_ENDING);
            } else {
                LOG_SETSTATUS(_@(MIS_SQ230), TOPIC_SQ230, LOG_SUCCESS);
            } else {
                B_GIVEPLAYERXP(XP_SQ230_FINISH);
            } else {
                GAMESERVICES_UNLOCKACHIEVEMENT(ACH_35);
            };
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_14");
        } else {
            CREATEINVITEMS(SELF, 0x859b, (2) * (ALENA_SQ230_GOLD));
        } else {
            SQ230_WINCOUNT = (SQ230_WINCOUNT) + (1);
        };
    };
    if ((((SQ230_FIGHTCOUNT) == (0)) || ((SQ230_FIGHTCOUNT) == (5))) || ((SQ230_FIGHTCOUNT) == (7))) {
        DIA_ALENA_SQ230_AFTERFIGHTBONUS();
    };
    if (((SQ230_FIGHTCOUNT) == (8)) && ((SQ230_WINCOUNT) == (0))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_15");
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AfterFight_03_16");
        CREATEINVITEMS(SELF, 0x8643, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8643, 1);
    };
    SQ230_DAYOFFIGHT = WLD_GETDAY();
    SQ230_HOUROFFIGHT = WLD_GETTIMEHOUR();
    SQ230_RESTOREFIGHTERS();
    SQ230_REMOVEENEMY();
    SQ230_FIGHTCOUNT = (SQ230_FIGHTCOUNT) + (1);
    SQ230_PREVIOUSFIGHT = 0;
    SQ230_COMETOARENA = 0;
}

instance DIA_ALENA_SQ230_BUSINESS(C_INFO) {
    NPC = 0xd724;
    NR = 3;
    CONDITION = DIA_ALENA_SQ230_BUSINESS_CONDITION;
    INFORMATION = DIA_ALENA_SQ230_BUSINESS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How's business going?";
}

func int DIA_ALENA_SQ230_BUSINESS_CONDITION() {
    if ((SQ230_WINCOUNT) >= (3)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALENA_SQ230_BUSINESS_INFO() {
    if ((RESERVED_VAR_INT_19) == (2)) {
        B_STANDUP();
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, RESERVED_CONST_STRING_67);
        AI_PLAYANI(SELF, RESERVED_CONST_STRING_38);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Alena_SQ230_Business_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Business_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Business_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_Business_03_04");
}

instance DIA_ALENA_SQ230_ALENAANDARENA(C_INFO) {
    NPC = 0xd724;
    NR = 4;
    CONDITION = DIA_ALENA_SQ230_ALENAANDARENA_CONDITION;
    INFORMATION = DIA_ALENA_SQ230_ALENAANDARENA_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How did you get started running the arena?";
}

func int DIA_ALENA_SQ230_ALENAANDARENA_CONDITION() {
    if ((SQ230_WINCOUNT) >= (6)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALENA_SQ230_ALENAANDARENA_INFO() {
    if ((RESERVED_VAR_INT_19) == (2)) {
        B_STANDUP();
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, RESERVED_CONST_STRING_67);
        AI_PLAYANI(SELF, RESERVED_CONST_STRING_38);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Alena_SQ230_AlenaAndArena_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AlenaAndArena_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AlenaAndArena_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_SQ230_AlenaAndArena_03_04");
}

instance DIA_ALENA_AMBIENT(C_INFO) {
    NPC = 0xd724;
    NR = 850;
    CONDITION = DIA_ALENA_AMBIENT_CONDITION;
    INFORMATION = DIA_ALENA_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_ALENA_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_ALENA_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if ((RESERVED_VAR_INT_19) == (2)) {
        B_STANDUP();
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        B_SAY(SELF, OTHER, RESERVED_CONST_STRING_67);
        AI_PLAYANI(SELF, RESERVED_CONST_STRING_38);
    };
    if ((LOG_GETSTATUS(MIS_SQ230)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_AMB_V3_03_01");
    };
    if ((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_AMB_V2_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Alena_AMB_V2_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_AMB_V1_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Alena_AMB_V1_03_02");
}

instance DIA_ALENA_PICKPOCKET(C_INFO) {
    NPC = 0xd724;
    NR = 900;
    CONDITION = DIA_ALENA_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ALENA_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40_FEMALE;
}

func int DIA_ALENA_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ALENA_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x11d43);
    INFO_ADDCHOICE(0x11d43, DIALOG_BACK, 0x11d47);
    INFO_ADDCHOICE(0x11d43, DIALOG_PICKPOCKET, 0x11d46);
}

func void DIA_ALENA_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x11d43);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x11d43);
}

func void DIA_ALENA_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x11d43);
}
