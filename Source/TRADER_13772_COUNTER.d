var int TRADER_13772_COUNTER;
instance DIA_13772_TRADER_EXIT(C_INFO) {
    NPC = 52293;
    NR = 999;
    CONDITION = DIA_13772_TRADER_EXIT_CONDITION;
    INFORMATION = DIA_13772_TRADER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13772_TRADER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13772_TRADER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13772_TRADER_TRADEWITHME(C_INFO) {
    NPC = 52293;
    NR = 2;
    CONDITION = DIA_13772_TRADER_TRADEWITHME_CONDITION;
    INFORMATION = DIA_13772_TRADER_TRADEWITHME_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's trade!";
}

func int DIA_13772_TRADER_TRADEWITHME_CONDITION() {
    return TRUE;
}

func void DIA_13772_TRADER_TRADEWITHME_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    if ((TRADER_13772_COUNTER) >= (RNG_TRADERCOUNT_MAX)) {
        NPC_EXCHANGEROUTINE(VLK_13772_TRAVELLINGTRADER, TOT);
        PRINTD("To ja sobie ju� p�jd�.");
    };
    TRADER_13772_COUNTER = (TRADER_13772_COUNTER) + (1);
    B_GIVETRADEINV_TRADER08(SELF);
}

