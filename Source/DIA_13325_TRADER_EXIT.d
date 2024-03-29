instance DIA_13325_TRADER_EXIT(C_INFO) {
    NPC = 56483;
    NR = 999;
    CONDITION = DIA_13325_TRADER_EXIT_CONDITION;
    INFORMATION = DIA_13325_TRADER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13325_TRADER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13325_TRADER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13325_TRADER_YOUSAVEDME(C_INFO) {
    NPC = 56483;
    NR = 1;
    CONDITION = DIA_13325_TRADER_YOUSAVEDME_CONDITION;
    INFORMATION = DIA_13325_TRADER_YOUSAVEDME_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13325_TRADER_YOUSAVEDME_CONDITION() {
    if ((NPC_ISDEAD(BDT_13326_BANDIT)) && (NPC_ISDEAD(BDT_13327_BANDIT))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13325_TRADER_YOUSAVEDME_INFO() {
    NONE_13325_TRADER.FLAGS = 2;
    AI_OUTPUT(SELF, OTHER, "DIA_13325_Trader_YouSavedMe_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13325_Trader_YouSavedMe_03_02");
    CREATEINVITEMS(SELF, 34203, EVENT_RESCUEDTRADER01);
    B_GIVEINVITEMS(SELF, OTHER, 34203, EVENT_RESCUEDTRADER01);
    NPC_EXCHANGEROUTINE(NONE_13325_TRADER, TOT);
    B_GIVEPLAYERXP(XP_EVENT_SAVEDTRADER_01);
    AI_OUTPUT(SELF, OTHER, "DIA_13325_Trader_YouSavedMe_03_03");
}

instance DIA_13325_TRADER_TRADEWITHME(C_INFO) {
    NPC = 56483;
    NR = 2;
    CONDITION = DIA_13325_TRADER_TRADEWITHME_CONDITION;
    INFORMATION = DIA_13325_TRADER_TRADEWITHME_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's trade!";
}

func int DIA_13325_TRADER_TRADEWITHME_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 81034)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_13325_TRADER_TRADEWITHME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13325_Trader_TradeWithMe_15_01");
    B_GIVETRADEINV_TRADER01(SELF);
}

