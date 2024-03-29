instance DIA_GRAVE_EXIT(C_INFO) {
    NPC = 55456;
    NR = 999;
    CONDITION = DIA_GRAVE_EXIT_CONDITION;
    INFORMATION = DIA_GRAVE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GRAVE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GRAVE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GRAVE_HELLO(C_INFO) {
    NPC = 55456;
    NR = 1;
    CONDITION = DIA_GRAVE_HELLO_CONDITION;
    INFORMATION = DIA_GRAVE_HELLO_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's life?";
}

func int DIA_GRAVE_HELLO_CONDITION() {
    if (NPC_ISINSTATE(SELF, 61599)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GRAVE_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew5");
    NPC_INITAMBIENTS(SELF, 2);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Grave_HELLO_03_01");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Grave_HELLO_03_03");
    };
}

instance DIA_GRAVE_WORK(C_INFO) {
    NPC = 55456;
    NR = 1;
    CONDITION = DIA_GRAVE_WORK_CONDITION;
    INFORMATION = DIA_GRAVE_WORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How's work?";
}

func int DIA_GRAVE_WORK_CONDITION() {
    return TRUE;
}

func void DIA_GRAVE_WORK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Grave_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_Work_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_Work_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_Work_03_04");
    INFO_CLEARCHOICES(75853);
    INFO_ADDCHOICE(75853, "Robbers?", 75856);
}

func void DIA_GRAVE_WORK_HYENAS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Grave_Work_Hyenas_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_Work_Hyenas_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_Work_Hyenas_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Grave_Work_Hyenas_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_Work_Hyenas_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_Work_Hyenas_03_06");
    INFO_CLEARCHOICES(75853);
}

instance DIA_GRAVE_Q309BOLT(C_INFO) {
    NPC = 55456;
    NR = 1;
    CONDITION = DIA_GRAVE_Q309BOLT_CONDITION;
    INFORMATION = DIA_GRAVE_Q309BOLT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know what happened to the bolthead?";
}

func int DIA_GRAVE_Q309BOLT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING)) {
        if ((Q309_BOLTLOGENTRY) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GRAVE_Q309BOLT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Grave_Q309Bolt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_Q309Bolt_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_Q309Bolt_03_03");
}

instance DIA_GRAVE_SHOVEL(C_INFO) {
    NPC = 55456;
    NR = 1;
    CONDITION = DIA_GRAVE_SHOVEL_CONDITION;
    INFORMATION = DIA_GRAVE_SHOVEL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can I borrow your shovel?";
}

func int DIA_GRAVE_SHOVEL_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q309)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 69121))) && ((NPC_HASITEMS(OTHER, 36952)) == (0))) {
        if ((Q309_BOLTLOGENTRY) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_GRAVE_SHOVEL_INFO() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Grave_SHOVEL_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_SHOVEL_03_02");
    INFO_CLEARCHOICES(75860);
    INFO_ADDCHOICE(75860, "I have to dig up the flower beds.", 75864);
    INFO_ADDCHOICE(75860, "I have to dig up the body.", 75865);
}

func void DIA_GRAVE_SHOVEL_CANT() {
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_SHOVEL_Work_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Grave_SHOVEL_Work_15_04");
}

func void DIA_GRAVE_SHOVEL_WORK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Grave_SHOVEL_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_SHOVEL_Work_03_02");
    DIA_GRAVE_SHOVEL_CANT();
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_SHOVEL_Work_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Grave_SHOVEL_Work_15_06");
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_GRAVE_SHOVEL);
    INFO_CLEARCHOICES(75860);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_GRAVE_SHOVEL_BODY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Grave_SHOVEL_Body_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_SHOVEL_Body_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Grave_SHOVEL_Body_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_SHOVEL_Body_03_04");
    DIA_GRAVE_SHOVEL_CANT();
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Grave_SHOVEL_Body_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Grave_SHOVEL_Body_15_06");
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(75860);
    AI_STOPPROCESSINFOS(SELF);
}

