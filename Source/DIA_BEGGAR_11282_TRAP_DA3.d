instance DIA_BEGGAR_11282_TRAP_DA3(C_INFO) {
    NPC = 51923;
    NR = 1;
    CONDITION = DIA_BEGGAR_11282_TRAP_DA3_CONDITION;
    INFORMATION = DIA_BEGGAR_11282_TRAP_DA3_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BEGGAR_11282_TRAP_DA3_CONDITION() {
    if (((TRAP_DA3_SPAWNED) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 72340))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEGGAR_11282_TRAP_DA3_INFO() {
    INFO_CLEARCHOICES(72378);
    INFO_ADDCHOICE(72378, "(Do nothing)", 72381);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (EVENT_BEGGARARMY)) {
        INFO_ADDCHOICE(72378, DIALOG_GIVE10G, 72382);
    };
}

func void DIA_BEGGAR_11282_TRAP_DONTGIVE2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thug_10034_After_SQ218_YouGetNothing_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(HERO, 94660);
}

func void DIA_BEGGAR_11282_TRAP_GIVEMONEY2() {
    M1_DA3_BEGGAR_GIVEMONEY();
    B_GIVEINVITEMS(OTHER, SELF, 34203, EVENT_BEGGARARMY);
    TRAP_DA3_COUNTER = (TRAP_DA3_COUNTER) + (1);
    AI_STOPPROCESSINFOS(SELF);
}
