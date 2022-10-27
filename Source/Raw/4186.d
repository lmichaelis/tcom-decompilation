instance DIA_MORITZ_EXIT(C_INFO) {
    NPC = 0xe59e;
    NR = 999;
    CONDITION = DIA_MORITZ_EXIT_CONDITION;
    INFORMATION = DIA_MORITZ_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MORITZ_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_MORITZ_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

var int MORITZ_GETLOST_AMBIENT = 0;
instance DIA_MORITZ_TREASURE(C_INFO) {
    NPC = 0xe59e;
    NR = 1;
    CONDITION = DIA_MORITZ_TREASURE_CONDITION;
    INFORMATION = DIA_MORITZ_TREASURE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MORITZ_TREASURE_CONDITION() {
    if (((KAPITEL) == (3)) && ((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS))) {
        return FALSE;
    };
    return TRUE;
}

var int MORITZ_TAKEQUEST = 0;
func void DIA_MORITZ_TREASURE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_13_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_13_01");
    INFO_CLEARCHOICES(0x14adf);
    INFO_ADDCHOICE(0x14adf, "What is it?", 0x14ae9);
}

func void DIA_MORITZ_TREASURE_DEAL() {
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Deal_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Deal_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Deal_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Deal_13_04");
    INFO_CLEARCHOICES(0x14adf);
    INFO_ADDCHOICE(0x14adf, "I don't have time to chase after your imaginary treasures.", 0x14ae8);
    INFO_ADDCHOICE(0x14adf, "You got a deal, where do we start?", 0x14ae7);
    INFO_ADDCHOICE(0x14adf, "I'm happy to help if the compensation is right.", 0x14ae5);
    INFO_ADDCHOICE(0x14adf, "Why me?", 0x14ae4);
}

func void DIA_MORITZ_TREASURE_WHYME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_Treasure_WhyMe_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_WhyMe_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_WhyMe_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_WhyMe_13_03");
}

func void DIA_MORITZ_TREASURE_PRIZE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_Treasure_Prize_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Prize_13_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_Treasure_Prize_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Prize_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Prize_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Prize_13_04");
}

func void DIA_MORITZ_TREASURE_ACCEPT_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Accept_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Accept_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Accept_13_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Accept_13_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Accept_13_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Accept_13_08");
    SQ304_MORITZ_RTNCHECK = 1;
    NPC_EXCHANGEROUTINE(SELF, "TREASURE01");
    INFO_CLEARCHOICES(0x14adf);
    LOG_CREATETOPIC(TOPIC_SQ304, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ304), TOPIC_SQ304, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ304, LOG_SQ304_START);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_MORITZ_TREASURE_ACCEPT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_Treasure_Accept_15_00");
    DIA_MORITZ_TREASURE_ACCEPT_NEXT();
}

func void DIA_MORITZ_TREASURE_DECLINE() {
    MORITZ_TAKEQUEST = TRUE;
    INFO_CLEARCHOICES(0x14adf);
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_Treasure_Decline_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Decline_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Decline_13_02");
    AI_STOPPROCESSINFOS(SELF);
    if ((MORITZ_GETLOST_AMBIENT) == (FALSE)) {
        MORITZ_GETLOST_AMBIENT = TRUE;
    };
}

func void DIA_MORITZ_TREASURE_WHATSUP() {
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_Treasure_Whatsup_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Whatsup_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Whatsup_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Whatsup_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Whatsup_13_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Whatsup_13_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Whatsup_13_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Whatsup_13_08");
    INFO_CLEARCHOICES(0x14adf);
    INFO_ADDCHOICE(0x14adf, "(Don't interrupt)", 0x14aea);
    INFO_ADDCHOICE(0x14adf, "Let me guess, a treasure map?", 0x14aeb);
}

func void DIA_MORITZ_TREASURE_CONTINUE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Continue_13_01");
    INFO_CLEARCHOICES(0x14adf);
    DIA_MORITZ_TREASURE_DEAL();
}

func void DIA_MORITZ_TREASURE_GUESS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_Treasure_Guess_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Guess_13_01");
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Guess_13_02");
    INFO_CLEARCHOICES(0x14adf);
    INFO_ADDCHOICE(0x14adf, "Thiago.", 0x14aed);
    INFO_ADDCHOICE(0x14adf, "Cortez.", 0x14aee);
    INFO_ADDCHOICE(0x14adf, "Relax, I just guessed.", 0x14aef);
}

func void DIA_MORITZ_TREASURE_GUESS_END() {
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Guess_End_13_01");
    INFO_CLEARCHOICES(0x14adf);
    INFO_ADDCHOICE(0x14adf, "Relax, I just guessed.", 0x14aef);
}

func void DIA_MORITZ_TREASURE_THIAGO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_Treasure_Thiago_15_00");
    DIA_MORITZ_TREASURE_GUESS_END();
}

func void DIA_MORITZ_TREASURE_CORTEZ() {
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_Treasure_Cortez_15_00");
    DIA_MORITZ_TREASURE_GUESS_END();
}

func void DIA_MORITZ_TREASURE_CHILL() {
    INFO_CLEARCHOICES(0x14adf);
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_Treasure_Chill_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Chill_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Chill_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Treasure_Chill_13_03");
    DIA_MORITZ_TREASURE_DEAL();
}

instance DIA_MORITZ_FIRSTTREASURE(C_INFO) {
    NPC = 0xe59e;
    NR = 2;
    CONDITION = DIA_MORITZ_FIRSTTREASURE_CONDITION;
    INFORMATION = DIA_MORITZ_FIRSTTREASURE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MORITZ_FIRSTTREASURE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ304)) == (LOG_RUNNING)) && ((NPC_GETDISTTOWP(SELF, "PART_15_MORITZ_STAND_01")) < (TA_DIST_SELFWP_MAX))) && (NPC_KNOWSINFO(OTHER, 0x14adf))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORITZ_FIRSTTREASURE_INFO() {
    WLD_SENDTRIGGER("MORITZ_BURRIED_TREASURE_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_13_00");
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_FirstTreasure_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_13_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_FirstTreasure_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_13_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_13_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_13_06");
    AI_LOGENTRY(TOPIC_SQ304, LOG_SQ304_FIRSTTREASURE);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MORITZ_FIRSTTREASURE_DONE(C_INFO) {
    NPC = 0xe59e;
    NR = 1;
    CONDITION = DIA_MORITZ_FIRSTTREASURE_DONE_CONDITION;
    INFORMATION = DIA_MORITZ_FIRSTTREASURE_DONE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MORITZ_FIRSTTREASURE_DONE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ304)) == (LOG_RUNNING)) {
        if ((MORITZ_SQ304_RAKEPLACECOUNTER) == (3)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void CHANGEMORRISROUTINE() {
    PRINTD("Moritz zmieni³ RTN");
    SQ304_MORITZ_RTNCHECK = 3;
    NPC_EXCHANGEROUTINE(PIR_1324_MORITZ, "TREASURE02");
}

func void DIA_MORITZ_DELAYEDRTNCHANGE() {
    FF_APPLYONCEEXTGT(0x14af5, (3) * (0x1770), 1);
}

func void DIA_MORITZ_FIRSTTREASURE_DONE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_Done_13_00");
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_FirstTreasure_Done_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_Done_13_01");
    B_USEFAKEMAP();
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_Done_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_Done_13_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_Done_13_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_FirstTreasure_Done_13_06");
    AI_FUNCTION(SELF, 0x14af6);
    AI_LOGENTRY(TOPIC_SQ304, LOG_SQ304_MORITZLOOKAROUND);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MORITZ_SECONDTREASURE(C_INFO) {
    NPC = 0xe59e;
    NR = 1;
    CONDITION = DIA_MORITZ_SECONDTREASURE_CONDITION;
    INFORMATION = DIA_MORITZ_SECONDTREASURE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MORITZ_SECONDTREASURE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ304)) == (LOG_RUNNING)) {
        if (((MORITZ_SQ304_RAKEPLACECOUNTER) == (3)) && ((NPC_GETDISTTOWP(SELF, "PART13_MORITZ_01")) < (TA_DIST_SELFWP_MAX))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORITZ_SECONDTREASURE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_13_00");
    INFO_CLEARCHOICES(0x14af8);
    INFO_ADDCHOICE(0x14af8, "Let's get to digging.", 0x14afc);
    INFO_ADDCHOICE(0x14af8, "I've had the opportunity to be here before.", 0x14afd);
}

func void DIA_MORITZ_SECONDTREASURE_END() {
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_End_13_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_End_13_01");
    AI_LOGENTRY(TOPIC_SQ304, LOG_SQ304_SECONDTREASURE);
    WLD_SENDTRIGGER("MORITZ_BURRIED_TREASURE_02");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_MORITZ_SECONDTREASURE_01() {
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_SecondTreasure_01_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_01_13_00");
    DIA_MORITZ_SECONDTREASURE_END();
}

func void DIA_MORITZ_SECONDTREASURE_02() {
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_SecondTreasure_02_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_02_13_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_02_13_01");
    DIA_MORITZ_SECONDTREASURE_END();
}

instance DIA_MORITZ_SECONDTREASURE_DONE(C_INFO) {
    NPC = 0xe59e;
    NR = 1;
    CONDITION = DIA_MORITZ_SECONDTREASURE_DONE_CONDITION;
    INFORMATION = DIA_MORITZ_SECONDTREASURE_DONE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MORITZ_SECONDTREASURE_DONE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ304)) == (LOG_RUNNING)) {
        if ((MORITZ_SQ304_RAKEPLACECOUNTER) == (6)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORITZ_SECONDTREASURE_DONE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_Done_13_00");
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_SecondTreasure_Done_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_Done_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_Done_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_Done_13_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_Done_13_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_SecondTreasure_Done_13_07");
    AI_LOGENTRY(TOPIC_SQ304, LOG_SQ304_MORITZIRRITATION);
    SQ304_MORITZ_RTNCHECK = 4;
    NPC_EXCHANGEROUTINE(SELF, "TREASURE03");
    AI_STOPPROCESSINFOS(SELF);
    if ((NPC_ISDEAD(KM_TURTLE_SQ304_01)) == (FALSE)) {
        B_REMOVENPC(0xc3e1);
    };
    if ((NPC_ISDEAD(KM_TURTLE_SQ304_02)) == (FALSE)) {
        B_REMOVENPC(0xc3e0);
    };
    if ((NPC_ISDEAD(BEAR_SQ304)) == (FALSE)) {
        B_REMOVENPC(0xc491);
    };
}

instance DIA_MORITZ_THIRDTREASURE(C_INFO) {
    NPC = 0xe59e;
    NR = 1;
    CONDITION = DIA_MORITZ_THIRDTREASURE_CONDITION;
    INFORMATION = DIA_MORITZ_THIRDTREASURE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MORITZ_THIRDTREASURE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ304)) == (LOG_RUNNING)) {
        if (((MORITZ_SQ304_RAKEPLACECOUNTER) == (6)) && ((NPC_GETDISTTOWP(SELF, "PART11_MORITZ_TREASURE_01")) < (TA_DIST_SELFWP_MAX))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORITZ_THIRDTREASURE_INFO() {
    WLD_SENDTRIGGER("MORITZ_BURRIED_TREASURE_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_ThirdTreasure_13_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_ThirdTreasure_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_ThirdTreasure_13_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_ThirdTreasure_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_ThirdTreasure_13_03");
    AI_LOGENTRY(TOPIC_SQ304, LOG_SQ304_MORITZLASTTREASURE);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MORITZ_THIRDTREASURE_DONE(C_INFO) {
    NPC = 0xe59e;
    NR = 1;
    CONDITION = DIA_MORITZ_THIRDTREASURE_DONE_CONDITION;
    INFORMATION = DIA_MORITZ_THIRDTREASURE_DONE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MORITZ_THIRDTREASURE_DONE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ304)) == (LOG_RUNNING)) {
        if ((MORITZ_SQ304_RAKEPLACECOUNTER) == (9)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORITZ_THIRDTREASURE_DONE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_ThirdTreasure_Done_13_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_ThirdTreasure_Done_13_01");
    INFO_CLEARCHOICES(0x14b04);
    INFO_ADDCHOICE(0x14b04, DIALOG_DONOTTALK, 0x14b07);
    INFO_ADDCHOICE(0x14b04, "Why don't we check out the last place?", 0x14b08);
}

func void DIA_MORITZ_THIRDTREASURE_DONE_END() {
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_ThirdTreasure_End_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_ThirdTreasure_End_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_ThirdTreasure_End_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_ThirdTreasure_End_13_04");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xfa36);
}

func void DIA_MORITZ_THIRDTREASURE_DONE_LAST() {
    AI_OUTPUT(OTHER, SELF, "DIA_Moritz_ThirdTreasure_Last_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_ThirdTreasure_Last_13_00");
    DIA_MORITZ_THIRDTREASURE_DONE_END();
}

instance DIA_MORITZ_AMBIENT(C_INFO) {
    NPC = 0xe59e;
    NR = 990;
    CONDITION = DIA_MORITZ_AMBIENT_CONDITION;
    INFORMATION = DIA_MORITZ_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_MORITZ_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14adf)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORITZ_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    if ((MORITZ_GETLOST_AMBIENT) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Ambient_03_01");
    };
    if ((NPC_KNOWSINFO(OTHER, 0x14af0)) && (!(NPC_KNOWSINFO(OTHER, 0x14b04)))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Ambient_03_02");
    };
    if (NPC_KNOWSINFO(OTHER, 0x14b04)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Ambient_03_03");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Moritz_Ambient_03_01");
}

instance DIA_MORITZ_TAKEQUEST(C_INFO) {
    NPC = 0xe59e;
    NR = 1;
    CONDITION = DIA_MORITZ_TAKEQUEST_CONDITION;
    INFORMATION = DIA_MORITZ_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I changed my mind. I'll help you.";
}

func int DIA_MORITZ_TAKEQUEST_CONDITION() {
    if ((MORITZ_TAKEQUEST) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORITZ_TAKEQUEST_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_QuestChangeMyMind");
    DIA_MORITZ_TREASURE_ACCEPT_NEXT();
}

instance DIA_MORITZ_PICKPOCKET(C_INFO) {
    NPC = 0xe59e;
    NR = 900;
    CONDITION = DIA_MORITZ_PICKPOCKET_CONDITION;
    INFORMATION = DIA_MORITZ_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_MORITZ_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MORITZ_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14b0f);
    INFO_ADDCHOICE(0x14b0f, DIALOG_BACK, 0x14b13);
    INFO_ADDCHOICE(0x14b0f, DIALOG_PICKPOCKET, 0x14b12);
}

func void DIA_MORITZ_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14b0f);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14b0f);
}

func void DIA_MORITZ_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14b0f);
}

