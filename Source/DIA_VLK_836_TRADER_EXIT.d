instance DIA_VLK_836_TRADER_EXIT(C_INFO) {
    NPC = 53043;
    NR = 999;
    CONDITION = DIA_VLK_836_TRADER_EXIT_CONDITION;
    INFORMATION = DIA_VLK_836_TRADER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VLK_836_TRADER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VLK_836_TRADER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VLK_836_TRADER_TRADE(C_INFO) {
    NPC = 53043;
    NR = 1;
    CONDITION = DIA_VLK_836_TRADER_TRADE_CONDITION;
    INFORMATION = DIA_VLK_836_TRADER_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Show me your wares.";
}

func int DIA_VLK_836_TRADER_TRADE_CONDITION() {
    return TRUE;
}

func void DIA_VLK_836_TRADER_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade2");
    B_GIVETRADEINV(SELF);
}

