var int PEDDLER_13809_COUNTER;
instance DIA_PEDDLER_EXIT(C_INFO) {
    NPC = 53854;
    NR = 999;
    CONDITION = DIA_PEDDLER_EXIT_CONDITION;
    INFORMATION = DIA_PEDDLER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_PEDDLER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_PEDDLER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    PLAYERHOUSE_CHCEKBOUGHTITEMS();
}

instance DIA_PEDDLER_NS68_START(C_INFO) {
    NPC = 53854;
    NR = 1;
    CONDITION = DIA_PEDDLER_NS68_START_CONDITION;
    INFORMATION = DIA_PEDDLER_NS68_START_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_PEDDLER_NS68_START_CONDITION() {
    return TRUE;
}

func void DIA_PEDDLER_NS68_START_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Peddler_NS68_Start_03_01");
    B_SAY(OTHER, SELF, "$MARVIN_Furniture01");
    AI_OUTPUT(SELF, OTHER, "DIA_Peddler_NS68_Start_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Peddler_NS68_Start_03_04");
}

instance DIA_PEDDLER_FURNITURETRADE(C_INFO) {
    NPC = 53854;
    NR = 2;
    CONDITION = DIA_PEDDLER_FURNITURETRADE_CONDITION;
    INFORMATION = DIA_PEDDLER_FURNITURETRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "I would like to purchase furniture.";
}

func int DIA_PEDDLER_FURNITURETRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73439)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PEDDLER_FURNITURETRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_Furniture02");
    if ((PEDDLER_13809_COUNTER) >= ((RNG_TRADERCOUNT_MAX) - (1))) {
        NPC_EXCHANGEROUTINE(VLK_13809_PEDDLER, TOT);
        AI_OUTPUT(SELF, OTHER, "DIA_Peddler_FurnitureTrade_03_01");
        PRINTD("To ja sobie ju� p�jd�.");
    };
    PEDDLER_13809_COUNTER = (PEDDLER_13809_COUNTER) + (1);
    AI_OUTPUT(SELF, OTHER, "DIA_Peddler_FurnitureTrade_03_02");
    B_GIVETRADEINV(SELF);
}

