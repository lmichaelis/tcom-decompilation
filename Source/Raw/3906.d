instance DIA_FISHMONGER2_EXIT(C_INFO) {
    NPC = 0xd332;
    NR = 999;
    CONDITION = DIA_FISHMONGER2_EXIT_CONDITION;
    INFORMATION = DIA_FISHMONGER2_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FISHMONGER2_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FISHMONGER2_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FISHMONGER2_TRADE(C_INFO) {
    NPC = 0xd332;
    NR = 1;
    CONDITION = DIA_FISHMONGER2_TRADE_CONDITION;
    INFORMATION = DIA_FISHMONGER2_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "I want to buy fish.";
}

func int DIA_FISHMONGER2_TRADE_CONDITION() {
    return TRUE;
}

func void DIA_FISHMONGER2_TRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fishmonger1_trade_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fishmonger1_trade_03_02");
    B_GIVETRADEINV_FISHMONGER2(SELF);
}

