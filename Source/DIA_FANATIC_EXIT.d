instance DIA_FANATIC_EXIT(C_INFO) {
    NPC = 55156;
    NR = 999;
    CONDITION = DIA_FANATIC_EXIT_CONDITION;
    INFORMATION = DIA_FANATIC_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FANATIC_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FANATIC_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FANATIC_HELLO(C_INFO) {
    NPC = 55156;
    NR = 1;
    CONDITION = DIA_FANATIC_HELLO_CONDITION;
    INFORMATION = DIA_FANATIC_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FANATIC_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_FANATIC_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_03_04");
    INFO_CLEARCHOICES(75431);
    INFO_ADDCHOICE(75431, "Not really.", 75434);
    INFO_ADDCHOICE(75431, "Make it quick.", 75435);
}

func void DIA_FANATIC_HELLO_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_No_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_11");
    AI_WAITTILLEND(OTHER, SELF);
    AI_PLAYANI(OTHER, R_SCRATCHHEAD);
    AI_WAITTILLEND(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_13");
    INFO_CLEARCHOICES(75431);
    INFO_ADDCHOICE(75431, "Thank you, but I'm not interested.", 75436);
    INFO_ADDCHOICE(75431, "Why don't you start teaching during the day?", 75437);
}

func void DIA_FANATIC_HELLO_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_Yes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_No_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_11");
    AI_WAITTILLEND(OTHER, SELF);
    AI_PLAYANI(OTHER, R_SCRATCHHEAD);
    AI_WAITTILLEND(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_No_03_13");
    INFO_CLEARCHOICES(75431);
    INFO_ADDCHOICE(75431, "Thank you, but I'm not interested.", 75436);
    INFO_ADDCHOICE(75431, "Why don't you start teaching during the day?", 75437);
}

func void DIA_FANATIC_HELLO_NO_GOAWAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_GoAway_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_GoAway_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_GoAway_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_GoAway_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_GoAway_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_GoAway_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_GoAway_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_GoAway_03_08");
    INFO_CLEARCHOICES(75431);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "FMQ003_GOAWAY");
    FMQ003_FANATICTALK = 1;
    NPC_SETREFUSETALK(MIL_4016_WEGAR, 2);
}

func void DIA_FANATIC_HELLO_NO_TEACHING() {
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_Teaching_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_Teaching_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_Teaching_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_Teaching_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_Teaching_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_Teaching_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_Teaching_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Fanatic_Hello_Teaching_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Fanatic_Hello_Teaching_03_09");
    INFO_CLEARCHOICES(75431);
    AI_STOPPROCESSINFOS(SELF);
    FMQ003_FANATICTALK = 2;
    NPC_SETREFUSETALK(MIL_4016_WEGAR, 2);
}

