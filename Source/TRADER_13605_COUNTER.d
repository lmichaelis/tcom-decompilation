var int TRADER_13605_COUNTER;
instance DIA_13605_TRADER_EXIT(C_INFO) {
    NPC = 58391;
    NR = 999;
    CONDITION = DIA_13605_TRADER_EXIT_CONDITION;
    INFORMATION = DIA_13605_TRADER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13605_TRADER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13605_TRADER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13605_TRADER_TRADEWITHME(C_INFO) {
    NPC = 58391;
    NR = 2;
    CONDITION = DIA_13605_TRADER_TRADEWITHME_CONDITION;
    INFORMATION = DIA_13605_TRADER_TRADEWITHME_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's trade!";
}

func int DIA_13605_TRADER_TRADEWITHME_CONDITION() {
    return TRUE;
}

func void DIA_13605_TRADER_TRADEWITHME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13605_Trader_TradeWithMe_15_01");
    if ((TRADER_13605_COUNTER) >= (RNG_TRADERCOUNT_MAX)) {
        NPC_EXCHANGEROUTINE(VLK_13605_TRAVELLINGTRADER, TOT);
        PRINTD("To ja sobie ju� p�jd�.");
    };
    TRADER_13605_COUNTER = (TRADER_13605_COUNTER) + (1);
    B_GIVETRADEINV_TRADER06(SELF);
}

