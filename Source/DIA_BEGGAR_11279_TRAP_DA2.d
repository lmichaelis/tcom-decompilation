instance DIA_BEGGAR_11279_TRAP_DA2(C_INFO) {
    NPC = 51910;
    NR = 1;
    CONDITION = DIA_BEGGAR_11279_TRAP_DA2_CONDITION;
    INFORMATION = DIA_BEGGAR_11279_TRAP_DA2_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BEGGAR_11279_TRAP_DA2_CONDITION() {
    if (((TRAP_DA2_SPAWNED) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 72332))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEGGAR_11279_TRAP_DA2_INFO() {
    INFO_CLEARCHOICES(72358);
    INFO_ADDCHOICE(72358, "(Do nothing)", 72361);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (EVENT_BEGGARARMY)) {
        INFO_ADDCHOICE(72358, DIALOG_GIVE10G, 72362);
    };
}

func void DIA_BEGGAR_11279_TRAP_DONTGIVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beggar_11279_Trap_DontGive_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_BEGGAR_11279_TRAP_GIVEMONEY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Beggar_11279_Trap_GiveMoney_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 34203, EVENT_BEGGARARMY);
    TRAP_DA2_COUNTER = (TRAP_DA2_COUNTER) + (1);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_BEGGAR_11279_TRAP_DA3(C_INFO) {
    NPC = 51910;
    NR = 1;
    CONDITION = DIA_BEGGAR_11279_TRAP_DA3_CONDITION;
    INFORMATION = DIA_BEGGAR_11279_TRAP_DA3_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_BEGGAR_11279_TRAP_DA3_CONDITION() {
    if (((TRAP_DA3_SPAWNED) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 72340))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_BEGGAR_11279_TRAP_DA3_INFO() {
    INFO_CLEARCHOICES(72363);
    INFO_ADDCHOICE(72363, "(Don't do anything.)", 72366);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (EVENT_BEGGARARMY)) {
        INFO_ADDCHOICE(72363, DIALOG_GIVE10G, 72367);
    };
}

func void DIA_BEGGAR_11279_TRAP_DONTGIVE2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thug_10034_After_SQ218_YouGetNothing_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(HERO, 94660);
}

func void DIA_BEGGAR_11279_TRAP_GIVEMONEY2() {
    M1_DA3_BEGGAR_GIVEMONEY();
    B_GIVEINVITEMS(OTHER, SELF, 34203, EVENT_BEGGARARMY);
    TRAP_DA3_COUNTER = (TRAP_DA3_COUNTER) + (1);
    AI_STOPPROCESSINFOS(SELF);
}

