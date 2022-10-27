instance DIA_FYNN_EXIT(C_INFO) {
    NPC = 0xdbfe;
    NR = 999;
    CONDITION = DIA_FYNN_EXIT_CONDITION;
    INFORMATION = DIA_FYNN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FYNN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FYNN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FYNN_WHO(C_INFO) {
    NPC = 0xdbfe;
    NR = 1;
    CONDITION = DIA_FYNN_WHO_CONDITION;
    INFORMATION = DIA_FYNN_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_FYNN_WHO_CONDITION() {
    return TRUE;
}

func void DIA_FYNN_WHO_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Fynn_Who_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_Who_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_FYNN_WORK(C_INFO) {
    NPC = 0xdbfe;
    NR = 1;
    CONDITION = DIA_FYNN_WORK_CONDITION;
    INFORMATION = DIA_FYNN_WORK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I'd like to work as a miner.";
}

var int FYNN_SQ119_ARAXOSTEST = 0;
func int DIA_FYNN_WORK_CONDITION() {
    if (((FYNN_SQ119_ARAXOSTEST) == (0)) && (NPC_KNOWSINFO(OTHER, 0x13514))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FYNN_WORK_INFO() {
    FYNN_SQ119_ARAXOSTEST = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Fynn_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_Work_03_02");
    B_STANDUP();
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "GUIDE_TEST");
}

instance DIA_FYNN_SEE(C_INFO) {
    NPC = 0xdbfe;
    NR = 1;
    CONDITION = DIA_FYNN_SEE_CONDITION;
    INFORMATION = DIA_FYNN_SEE_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_FYNN_SEE_CONDITION() {
    if (((FYNN_SQ119_ARAXOSTEST) == (1)) && ((NPC_GETDISTTOWP(SELF, "PART7_MINE_GOLDTESTER")) <= (400))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FYNN_SEE_INFO() {
    FYNN_SQ119_ARAXOSTEST = 2;
    SQ119_ARAXOSTEST_START = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_See_03_01");
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(SELF, "GOLDTEST_WAIT");
    if (((NPC_HASITEMS(OTHER, 0x84df)) == (0)) && ((REFUGEESREPUTATION) == (FALSE))) {
        REFUGEESREPUTATION = TRUE;
        CREATEINVITEMS(SELF, 0x84df, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x84df, 1);
    };
}

instance DIA_FYNN_AFTERTEST(C_INFO) {
    NPC = 0xdbfe;
    NR = 1;
    CONDITION = DIA_FYNN_AFTERTEST_CONDITION;
    INFORMATION = DIA_FYNN_AFTERTEST_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_FYNN_AFTERTEST_CONDITION() {
    if (((SQ119_ARAXOSTEST_FINISH) == (TRUE)) && ((SQ119_CANGOTOARAXOSMINE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FYNN_AFTERTEST_CONTRACT() {
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_01");
    if ((SQ119_ARAXOSTEST_COUNTGOLDNUGGET) >= (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_02");
    };
    if ((HERO_HACKCHANCE) >= (50)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_03");
    };
    if ((HERO.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_04");
    };
    if ((HERO.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_05");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_06");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_07");
    if ((SQ119_ARAXOSTEST_COUNTGOLDNUGGET) >= (7)) {
        SQ119_GOTPAYMENT = 1;
        AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_08");
        LOG_CREATETOPIC(TOPIC_GOLDMINE, LOG_NOTE);
        AI_LOGENTRY(TOPIC_GOLDMINE, LOG_GOLDMINE_HOWMUCH_V1);
    };
    if ((HERO_HACKCHANCE) >= (50)) {
        SQ119_GOTPAYMENT = 2;
        AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_09");
        LOG_CREATETOPIC(TOPIC_GOLDMINE, LOG_NOTE);
        AI_LOGENTRY(TOPIC_GOLDMINE, LOG_GOLDMINE_HOWMUCH_V2);
    };
    if ((HERO.GUILD) == (GIL_SLD)) {
        SQ119_PASSAGEPAYMENT = 1;
        AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_10");
        LOG_CREATETOPIC(TOPIC_GOLDMINE, LOG_NOTE);
        AI_LOGENTRY(TOPIC_GOLDMINE, LOG_GOLDMINE_PAY_V1);
    };
    if ((HERO.GUILD) == (GIL_MIL)) {
        SQ119_PASSAGEPAYMENT = 2;
        AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_11");
        LOG_CREATETOPIC(TOPIC_GOLDMINE, LOG_NOTE);
        AI_LOGENTRY(TOPIC_GOLDMINE, LOG_GOLDMINE_PAY_V2);
    };
    SQ119_PASSAGEPAYMENT = 3;
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_12");
    LOG_CREATETOPIC(TOPIC_GOLDMINE, LOG_NOTE);
    AI_LOGENTRY(TOPIC_GOLDMINE, LOG_GOLDMINE_PAY_V3);
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_14");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Finish_03_15");
    INFO_CLEARCHOICES(0x1351e);
    INFO_ADDCHOICE(0x1351e, "That doesn't sound like a very good offer.", 0x13522);
    INFO_ADDCHOICE(0x1351e, "Sure, sounds like pretty reasonable terms.", 0x13521);
}

func void DIA_FYNN_AFTERTEST_GIVEALL_NEXT_FINISH_YES() {
    SQ119_CANGOTOARAXOSMINE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Fynn_AfterTest_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Yes_03_02");
    B_USEFAKESCROLL_MARVIN();
    AI_WAITTILLEND(SELF, OTHER);
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Yes_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Yes_03_04");
    INFO_CLEARCHOICES(0x1351e);
    AI_FUNCTION(SELF, 0xb87c);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    LOG_CREATETOPIC(TOPIC_GOLDMINE, LOG_NOTE);
    AI_LOGENTRY(TOPIC_GOLDMINE, LOG_GOLDMINE_NOGOLDNUGGET);
}

func void DIA_FYNN_AFTERTEST_GIVEALL_NEXT_FINISH_NO() {
    AI_STARTFACEANI(OTHER, S_THINK, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Fynn_AfterTest_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_No_03_02");
    AI_RESETFACEANI(OTHER);
}

func void DIA_FYNN_AFTERTEST_INFO() {
    SQ119_ARAXOSTEST_START = FALSE;
    SQ119_ARAXOSTEST_FINISH = FALSE;
    NPC_EXCHANGEROUTINE(SELF, START);
    if ((HERO_HACKCHANCE) <= (50)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_03_01");
        INFO_CLEARCHOICES(0x1351e);
        if ((NPC_HASITEMS(OTHER, 0x837c)) >= ((SQ119_ARAXOSTEST_COUNTGOLDNUGGET) + (5))) {
            INFO_ADDCHOICE(0x1351e, "(Return the extracted nuggets and add 5 of your own)", 0x13526);
        };
        INFO_ADDCHOICE(0x1351e, "(Hand over all the extracted nuggets)", 0x13525);
    };
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_03_02");
    DIA_FYNN_AFTERTEST_CONTRACT();
}

func void DIA_FYNN_AFTERTEST_RESULT() {
    if ((SQ119_ARAXOSTEST_COUNTGOLDNUGGET) >= (5)) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Next_03_02");
        DIA_FYNN_AFTERTEST_CONTRACT();
    };
    NPC_REMOVEINVITEMS(SELF, 0x837c, SQ119_ARAXOSTEST_COUNTGOLDNUGGET);
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Fynn_AfterTest_Next_03_01");
    FYNN_SQ119_ARAXOSTEST = 0;
    AI_FUNCTION(SELF, 0xb87c);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

func void DIA_FYNN_AFTERTEST_GIVEALL() {
    B_GIVEINVITEMS(OTHER, SELF, 0x837c, SQ119_ARAXOSTEST_COUNTGOLDNUGGET);
    DIA_FYNN_AFTERTEST_RESULT();
}

func void DIA_FYNN_AFTERTEST_GIVEALLANDYOURS() {
    SQ119_ARAXOSTEST_COUNTGOLDNUGGET = (SQ119_ARAXOSTEST_COUNTGOLDNUGGET) + (5);
    DIA_FYNN_AFTERTEST_GIVEALL();
}

instance DIA_FYNN_PICKPOCKET(C_INFO) {
    NPC = 0xdbfe;
    NR = 900;
    CONDITION = DIA_FYNN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_FYNN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_FYNN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FYNN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x13527);
    INFO_ADDCHOICE(0x13527, DIALOG_BACK, 0x1352b);
    INFO_ADDCHOICE(0x13527, DIALOG_PICKPOCKET, 0x1352a);
}

func void DIA_FYNN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x837c, 2);
        B_GIVEINVITEMS(SELF, OTHER, 0x837c, 2);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x13527);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x13527);
}

func void DIA_FYNN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x13527);
}
