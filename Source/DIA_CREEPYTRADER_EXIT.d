instance DIA_CREEPYTRADER_EXIT(C_INFO) {
    NPC = 57293;
    NR = 999;
    CONDITION = DIA_CREEPYTRADER_EXIT_CONDITION;
    INFORMATION = DIA_CREEPYTRADER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CREEPYTRADER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CREEPYTRADER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CREEPYTRADER_WEIRDOFFER(C_INFO) {
    NPC = 57293;
    NR = 1;
    CONDITION = DIA_CREEPYTRADER_WEIRDOFFER_CONDITION;
    INFORMATION = DIA_CREEPYTRADER_WEIRDOFFER_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CREEPYTRADER_WEIRDOFFER_CONDITION() {
    return TRUE;
}

func void DIA_CREEPYTRADER_WEIRDOFFER_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_CreepyTrader_WeirdOffer_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_CreepyTrader_WeirdOffer_03_02");
}

instance DIA_CREEPYTRADER_CURSEDCUPS(C_INFO) {
    NPC = 57293;
    NR = 2;
    CONDITION = DIA_CREEPYTRADER_CURSEDCUPS_CONDITION;
    INFORMATION = DIA_CREEPYTRADER_CURSEDCUPS_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I would like to buy a cup. (100 GP)";
}

func int DIA_CREEPYTRADER_CURSEDCUPS_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 85634)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CREEPYTRADER_CURSEDCUPS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_CreepyTrader_CursedCups_15_01");
    if ((CREEPYTRADER_CURSEDCUPS_COUNTER) <= (10)) {
        if ((NPC_HASITEMS(OTHER, 34203)) >= (EVENT_CREEPYTRADER_CUPS)) {
            AI_OUTPUT(SELF, OTHER, "DIA_CreepyTrader_CursedCups_03_02");
            CREATEINVITEMS(SELF, 38215, 1);
            B_GIVEINVITEMS(OTHER, SELF, 34203, EVENT_CREEPYTRADER_CUPS);
            CREEPYTRADER_CURSEDCUPS_COUNTER = (CREEPYTRADER_CURSEDCUPS_COUNTER) + (1);
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_CreepyTrader_CursedCups_03_03");
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_CreepyTrader_CursedCups_03_04");
}

