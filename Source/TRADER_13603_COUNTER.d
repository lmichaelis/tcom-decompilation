var int TRADER_13603_COUNTER;
instance DIA_13603_TRADER_EXIT(C_INFO) {
    NPC = 52625;
    NR = 999;
    CONDITION = DIA_13603_TRADER_EXIT_CONDITION;
    INFORMATION = DIA_13603_TRADER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13603_TRADER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13603_TRADER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13603_TRADER_TRADEWITHME(C_INFO) {
    NPC = 52625;
    NR = 2;
    CONDITION = DIA_13603_TRADER_TRADEWITHME_CONDITION;
    INFORMATION = DIA_13603_TRADER_TRADEWITHME_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's trade!";
}

func int DIA_13603_TRADER_TRADEWITHME_CONDITION() {
    return TRUE;
}

func void DIA_13603_TRADER_TRADEWITHME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13603_Trader_TradeWithMe_15_01");
    if ((TRADER_13603_COUNTER) >= (RNG_TRADERCOUNT_MAX)) {
        NPC_EXCHANGEROUTINE(VLK_13603_TRAVELLINGTRADER, TOT);
        PRINTD("To ja sobie ju� p�jd�.");
    };
    TRADER_13603_COUNTER = (TRADER_13603_COUNTER) + (1);
    B_GIVETRADEINV_TRADER04(SELF);
}

