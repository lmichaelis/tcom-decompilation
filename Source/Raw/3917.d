instance DIA_CITYTRADE05_EXIT(C_INFO) {
    NPC = 0xcd4a;
    NR = 999;
    CONDITION = DIA_CITYTRADE05_EXIT_CONDITION;
    INFORMATION = DIA_CITYTRADE05_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CITYTRADE05_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CITYTRADE05_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CITYTRADE05_TRADE(C_INFO) {
    NPC = 0xcd4a;
    NR = 1;
    CONDITION = DIA_CITYTRADE05_TRADE_CONDITION;
    INFORMATION = DIA_CITYTRADE05_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's trade!";
}

func int DIA_CITYTRADE05_TRADE_CONDITION() {
    return TRUE;
}

func void DIA_CITYTRADE05_TRADE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_CityTrade01_Trade_15_01");
    B_GIVETRADEINV(SELF);
}
