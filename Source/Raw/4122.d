var int LUCY_GOTPILLOW = 0;
instance DIA_LUCY_EXIT(C_INFO) {
    NPC = 0xe3c8;
    NR = 999;
    CONDITION = DIA_LUCY_EXIT_CONDITION;
    INFORMATION = DIA_LUCY_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LUCY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LUCY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LUCY_WHO(C_INFO) {
    NPC = 0xe3c8;
    NR = 1;
    CONDITION = DIA_LUCY_WHO_CONDITION;
    INFORMATION = DIA_LUCY_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Hello. Who are you?";
}

func int DIA_LUCY_WHO_CONDITION() {
    return TRUE;
}

func void DIA_LUCY_WHO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Who_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Who_03_04");
    if ((TRADER_LOGENTRY_WOLFSDEN_LUCY) == (FALSE)) {
        TRADER_LOGENTRY_WOLFSDEN_LUCY = TRUE;
        LOG_CREATETOPIC(TOPIC_WOLFSDENTRADER, LOG_NOTE);
        AI_LOGENTRY(TOPIC_WOLFSDENTRADER, LOG_TRADE_WOLFSDEN_LUCY);
    };
}

instance DIA_LUCY_HUNTERS(C_INFO) {
    NPC = 0xe3c8;
    NR = 10;
    CONDITION = DIA_LUCY_HUNTERS_CONDITION;
    INFORMATION = DIA_LUCY_HUNTERS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are your family members still hunters?";
}

func int DIA_LUCY_HUNTERS_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14105)) {
        if (((LOG_GETSTATUS(MIS_SQ402)) != (LOG_SUCCESS)) || ((LOG_GETSTATUS(MIS_SQ402)) != (LOG_FAILED))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCY_HUNTERS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Hunters_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Hunters_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Hunters_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Hunters_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Hunters_03_05");
    INFO_CLEARCHOICES(0x14108);
    INFO_ADDCHOICE(0x14108, "And what is your brother good at?", 0x1410c);
    INFO_ADDCHOICE(0x14108, "And you... aren't you looking for another future?", 0x1410b);
}

func void DIA_LUCY_HUNTERS_FUTURE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Hunters_Future_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Hunters_Future_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Hunters_Future_15_03");
    INFO_CLEARCHOICES(0x14108);
}

func void DIA_LUCY_HUNTERS_BROTHER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Hunters_Brother_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Hunters_Brother_03_02");
    INFO_CLEARCHOICES(0x14108);
}

instance DIA_LUCY_TRADE(C_INFO) {
    NPC = 0xe3c8;
    NR = 950;
    CONDITION = DIA_LUCY_TRADE_CONDITION;
    INFORMATION = DIA_LUCY_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "I'd like to buy something.";
}

func int DIA_LUCY_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14105)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCY_TRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_TRADE_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_TRADE_03_02");
    B_GIVETRADEINV(SELF);
}

instance DIA_LUCY_SQ402HELP(C_INFO) {
    NPC = 0xe3c8;
    NR = 1;
    CONDITION = DIA_LUCY_SQ402HELP_CONDITION;
    INFORMATION = DIA_LUCY_SQ402HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Your brother asked me for help.";
}

func int DIA_LUCY_SQ402HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ402)) == (LOG_RUNNING)) && ((SQ402_NELSON_READYFORHUNT) == (1))) {
        if (NPC_KNOWSINFO(OTHER, 0x14105)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCY_SQ402HELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_SQ402Help_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_SQ402Help_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_SQ402Help_15_03");
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, T_JUMPB);
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_SQ402Help_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_SQ402Help_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_SQ402Help_03_06");
}

instance DIA_LUCY_PILLOW(C_INFO) {
    NPC = 0xe3c8;
    NR = 1;
    CONDITION = DIA_LUCY_PILLOW_CONDITION;
    INFORMATION = DIA_LUCY_PILLOW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need one travel pillow.";
}

func int DIA_LUCY_PILLOW_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x140bb))) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) {
        if (NPC_KNOWSINFO(OTHER, 0x14105)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCY_PILLOW_HEREYOUGO() {
    LUCY_GOTPILLOW = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Pillow_03_02");
    AI_PLAYANI(SELF, T_PLUNDER);
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Pillow_03_03");
    CREATEINVITEMS(SELF, 0x91e0, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x91e0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Pillow_15_04");
    AI_LOGENTRY(TOPIC_Q404, LOG_Q404_LUCY_GOTPILLOW);
}

func void DIA_LUCY_PILLOW_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Pillow_15_01");
    if ((LOG_GETSTATUS(MIS_SQ402)) == (LOG_SUCCESS)) {
        DIA_LUCY_PILLOW_HEREYOUGO();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Pillow_03_05");
    INFO_CLEARCHOICES(0x14113);
    INFO_ADDCHOICE(0x14113, "What if I pay you?", 0x14117);
    INFO_ADDCHOICE(0x14113, "Maybe you could make an exception?", 0x14118);
    INFO_ADDCHOICE(0x14113, "I need it for a friend.", 0x14119);
}

func void DIA_LUCY_PILLOW_GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Pillow_Gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Pillow_Gold_03_02");
}

func void DIA_LUCY_PILLOW_EXCEPTION() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Pillow_Exception_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Pillow_Exception_03_02");
}

func void DIA_LUCY_PILLOW_NEED() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Pillow_Need_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Pillow_Need_03_02");
}

instance DIA_LUCY_CONVINCE(C_INFO) {
    NPC = 0xe3c8;
    NR = 1;
    CONDITION = DIA_LUCY_CONVINCE_CONDITION;
    INFORMATION = DIA_LUCY_CONVINCE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Is there anything I can do to convince you?";
}

func int DIA_LUCY_CONVINCE_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) && (NPC_KNOWSINFO(OTHER, 0x14113))) && ((LOG_GETSTATUS(MIS_SQ402)) != (LOG_SUCCESS))) {
        if (NPC_KNOWSINFO(OTHER, 0x14105)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCY_PILLOW_NOHELP() {
    LUCY_GOTPILLOW = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Convince_03_02");
    AI_LOGENTRY(TOPIC_Q404, LOG_Q404_LUCY_FAILED);
}

func void DIA_LUCY_PILLOW_NOTYET() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Convince_03_03");
}

func void DIA_LUCY_CONVINCE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Convince_15_01");
    LUCY_GOTPILLOW = TRUE;
    if ((LOG_GETSTATUS(MIS_SQ402)) == (LOG_FAILED)) {
        DIA_LUCY_PILLOW_NOHELP();
    };
    DIA_LUCY_PILLOW_NOTYET();
    AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Convince_03_04");
    AI_LOGENTRY(TOPIC_Q404, LOG_Q404_LUCY_HOWHELP);
}

instance DIA_LUCY_ABOUTPILLOW(C_INFO) {
    NPC = 0xe3c8;
    NR = 1;
    CONDITION = DIA_LUCY_ABOUTPILLOW_CONDITION;
    INFORMATION = DIA_LUCY_ABOUTPILLOW_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "As for the pillow...";
}

func int DIA_LUCY_ABOUTPILLOW_CONDITION() {
    if (((((Q404_GUARDMINE_NEEDHELP) == (TRUE)) && ((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING))) && (NPC_KNOWSINFO(OTHER, 0x1411a))) && ((LUCY_GOTPILLOW) == (TRUE))) {
        if (NPC_KNOWSINFO(OTHER, 0x14105)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCY_ABOUTPILLOW_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_AboutPillow_15_01");
    if ((LOG_GETSTATUS(MIS_SQ402)) == (LOG_FAILED)) {
        DIA_LUCY_PILLOW_NOHELP();
    };
    if ((LOG_GETSTATUS(MIS_SQ402)) == (LOG_SUCCESS)) {
        DIA_LUCY_PILLOW_HEREYOUGO();
    };
    DIA_LUCY_PILLOW_NOTYET();
}

instance DIA_LUCY_AMBIENT(C_INFO) {
    NPC = 0xe3c8;
    NR = 850;
    CONDITION = DIA_LUCY_AMBIENT_CONDITION;
    INFORMATION = DIA_LUCY_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_LUCY_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14105)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCY_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lucy_Ambient_15_01");
    NPC_INITAMBIENTS(SELF, 4);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Ambient_03_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Ambient_03_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Ambient_03_04");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lucy_Ambient_03_05");
    };
}

instance DIA_LUCY_PICKPOCKET(C_INFO) {
    NPC = 0xe3c8;
    NR = 900;
    CONDITION = DIA_LUCY_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LUCY_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80_FEMALE;
}

func int DIA_LUCY_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LUCY_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14125);
    INFO_ADDCHOICE(0x14125, DIALOG_BACK, 0x14129);
    INFO_ADDCHOICE(0x14125, DIALOG_PICKPOCKET, 0x14128);
}

func void DIA_LUCY_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 0x8c8e, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8c8e, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14125);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14125);
}

func void DIA_LUCY_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14125);
}

