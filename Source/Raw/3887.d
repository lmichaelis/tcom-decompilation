instance VLK_13838_BAKER_TRADEWITHME(C_INFO) {
    NPC = 0xcd3f;
    NR = 2;
    CONDITION = DIA_13868_BAKER_TRADEWITHME_CONDITION;
    INFORMATION = DIA_13868_BAKER_TRADEWITHME_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's trade!";
}

func int DIA_13868_BAKER_TRADEWITHME_CONDITION() {
    return TRUE;
}

func void DIA_13868_BAKER_TRADEWITHME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_13603_Trader_TradeWithMe_15_01");
    B_GIVETRADEINV(SELF);
}

