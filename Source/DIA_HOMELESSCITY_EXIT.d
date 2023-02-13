instance DIA_HOMELESSCITY_EXIT(C_INFO) {
    NPC = 52638;
    NR = 999;
    CONDITION = DIA_HOMELESSCITY_EXIT_CONDITION;
    INFORMATION = DIA_HOMELESSCITY_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HOMELESSCITY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HOMELESSCITY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOMELESSCITY_HELLO(C_INFO) {
    NPC = 52638;
    NR = 1;
    CONDITION = DIA_HOMELESSCITY_HELLO_CONDITION;
    INFORMATION = DIA_HOMELESSCITY_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOMELESSCITY_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_HOMELESSCITY_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_03_01");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_15_02");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_03_03");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_15_04");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_03_05");
    INFO_CLEARCHOICES(68913);
    INFO_ADDCHOICE(68913, "Wouldn't you rather make money somehow?", 68917);
    if ((NPC_HASITEMS(OTHER, 34203)) >= (FMQ003_HOMELESSGOLD)) {
        INFO_ADDCHOICE(68913, "All right, here's some coins. (15 GP)", 68916);
    };
}

func void DIA_HOMELESSCITY_HELLO_15GOLD() {
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_15Gold_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 34203, FMQ003_HOMELESSGOLD);
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_15Gold_03_02");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_15Gold_15_03");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_15Gold_03_04");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_15Gold_03_05");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_15Gold_15_06");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_15Gold_03_07");
    NPC_EXCHANGEROUTINE(SELF, "GoToTavern");
    INFO_CLEARCHOICES(68913);
    AI_STOPPROCESSINFOS(SELF);
    FMQ003_HOMELESSTALK = 1;
    AI_FUNCTION(HERO, 68920);
}

func void DIA_HOMELESSCITY_HELLO_WORK() {
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_Work_15_01");
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_Work_03_02");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_Work_15_03");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_Work_03_04");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_Work_15_05");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_Work_03_06");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_Work_15_07");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_Work_03_08");
    INFO_CLEARCHOICES(68913);
    INFO_ADDCHOICE(68913, "In that case, I'm sorry, I can't help you.", 68918);
    INFO_ADDCHOICE(68913, "No work, no pay, you slob.", 68919);
}

func void DIA_HOMELESSCITY_HELLO_WORK_NOHELP() {
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_NoHelp_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_NoHelp_03_02");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_NoHelp_15_03");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_NoHelp_03_04");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_15Gold_15_06");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_NoHelp_03_05");
    INFO_CLEARCHOICES(68913);
    NPC_EXCHANGEROUTINE(SELF, "Tavern");
    AI_STOPPROCESSINFOS(SELF);
    FMQ003_HOMELESSTALK = 2;
}

func void DIA_HOMELESSCITY_HELLO_WORK_GOAWAY() {
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_GoAway_15_01");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_GoAway_03_02");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_GoAway_15_03");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_GoAway_03_04");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_GoAway_15_05");
    AI_OUTPUT(SELF, OTHER, "Dia_HomelessCity_Hello_GoAway_03_06");
    AI_OUTPUT(OTHER, SELF, "Dia_HomelessCity_Hello_GoAway_15_07");
    INFO_CLEARCHOICES(68913);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Tavern");
    FMQ003_HOMELESSTALK = 3;
}

func void CHANGEHOMELESSMDS() {
    MDL_APPLYOVERLAYMDS(NONE_6240_HOMELESS, HUMANSSPRINTMDS);
}

