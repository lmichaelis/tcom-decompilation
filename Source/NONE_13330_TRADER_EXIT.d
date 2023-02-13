instance NONE_13330_TRADER_EXIT(C_INFO) {
    NPC = 55992;
    NR = 999;
    CONDITION = NONE_13330_TRADER_EXIT_CONDITION;
    INFORMATION = NONE_13330_TRADER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int NONE_13330_TRADER_EXIT_CONDITION() {
    return TRUE;
}

func void NONE_13330_TRADER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance NONE_13330_TRADER_AFTEREVENT(C_INFO) {
    NPC = 55992;
    NR = 1;
    CONDITION = NONE_13330_TRADER_AFTEREVENT_CONDITION;
    INFORMATION = NONE_13330_TRADER_AFTEREVENT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int NONE_13330_TRADER_AFTEREVENT_CONDITION() {
    if (((NPC_ISDEAD(BDT_13332_BANDIT)) && (NPC_ISDEAD(BDT_13333_BANDIT))) && (NPC_ISDEAD(BDT_13334_BANDIT))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void NONE_13330_TRADER_AFTEREVENT_INFO() {
    NONE_13330_TRADER.FLAGS = 2;
    if ((TRAP23_BADEND) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "NONE_13330_Trader_AfterEvent_03_01");
        AI_OUTPUT(SELF, OTHER, "NONE_13330_Trader_AfterEvent_03_02");
        AI_OUTPUT(OTHER, SELF, "NONE_13330_Trader_AfterEvent_15_03");
        AI_OUTPUT(SELF, OTHER, "NONE_13330_Trader_AfterEvent_03_04");
        NPC_EXCHANGEROUTINE(SELF, "BADEND");
        B_GIVEPLAYERXP(XP_EVENT_SAVEDTRADER_02);
    };
    AI_OUTPUT(SELF, OTHER, "NONE_13330_Trader_AfterEvent_03_05");
    AI_OUTPUT(SELF, OTHER, "NONE_13330_Trader_AfterEvent_03_06");
    AI_OUTPUT(OTHER, SELF, "NONE_13330_Trader_AfterEvent_15_07");
    B_GIVEPLAYERXP(XP_EVENT_SAVEDTRADER_02_GOOD);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    NPC_EXCHANGEROUTINE(NONE_13331_BODYGUARD, TOT);
    NONE_13331_BODYGUARD.FLAGS = 2;
    NONE_13330_TRADER.FLAGS = 2;
    if ((NONE_13330_TRADER.ATTRIBUTE[0]) != (NONE_13330_TRADER.ATTRIBUTE[1])) {
        NONE_13330_TRADER.ATTRIBUTE[0] = NONE_13330_TRADER.ATTRIBUTE[1];
    };
    if ((NONE_13331_BODYGUARD.ATTRIBUTE[0]) != (NONE_13331_BODYGUARD.ATTRIBUTE[1])) {
        NONE_13331_BODYGUARD.ATTRIBUTE[0] = NONE_13331_BODYGUARD.ATTRIBUTE[1];
    };
    AI_OUTPUT(SELF, OTHER, "NONE_13330_Trader_AfterEvent_03_08");
    CREATEINVITEMS(SELF, 34210, 1);
    if ((TRAP23_BADEND) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "NONE_13330_Trader_AfterEvent_03_09");
        AI_STOPPROCESSINFOS(SELF);
    };
    B_GIVEINVITEMS(SELF, OTHER, 34210, 1);
    AI_OUTPUT(SELF, OTHER, "NONE_13330_Trader_AfterEvent_03_10");
}

instance NONE_13330_TRADER_BADENDING(C_INFO) {
    NPC = 55992;
    NR = 2;
    CONDITION = NONE_13330_TRADER_BADENDING_CONDITION;
    INFORMATION = NONE_13330_TRADER_BADENDING_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int NONE_13330_TRADER_BADENDING_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 77652)) && ((TRAP23_BADEND) == (TRUE))) && (NPC_ISINSTATE(SELF, 61599))) {
        if (((NPC_ISDEAD(BDT_13332_BANDIT)) && (NPC_ISDEAD(BDT_13333_BANDIT))) && (NPC_ISDEAD(BDT_13334_BANDIT))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void NONE_13330_TRADER_BADENDING_INFO() {
    AI_OUTPUT(SELF, OTHER, "NONE_13330_Trader_BadEnding_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13330_TRADER_TRADEWITHME(C_INFO) {
    NPC = 55992;
    NR = 2;
    CONDITION = DIA_13330_TRADER_TRADEWITHME_CONDITION;
    INFORMATION = DIA_13330_TRADER_TRADEWITHME_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's trade!";
}

func int DIA_13330_TRADER_TRADEWITHME_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 77652)) && ((TRAP23_BADEND) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13330_TRADER_TRADEWITHME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13330_Trader_TradeWithMe_15_01");
    B_GIVETRADEINV_TRADER02(SELF);
}

