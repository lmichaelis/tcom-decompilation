instance DIA_THIEF_PQ110_EXIT(C_INFO) {
    NPC = 52468;
    NR = 999;
    CONDITION = DIA_THIEF_PQ110_EXIT_CONDITION;
    INFORMATION = DIA_THIEF_PQ110_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_THIEF_PQ110_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_THIEF_PQ110_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_THIEF_PQ110_WHATYADOIN(C_INFO) {
    NPC = 52468;
    NR = 10;
    CONDITION = DIA_THIEF_PQ110_WHATYADOIN_CONDITION;
    INFORMATION = DIA_THIEF_PQ110_WHATYADOIN_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_THIEF_PQ110_WHATYADOIN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_PQ110)) == (LOG_RUNNING)) && ((PQ110_SPAWNTHIEF) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THIEF_PQ110_WHATYADOIN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_PQ110_WhatYaDoin_03_01");
    INFO_CLEARCHOICES(68602);
    INFO_ADDCHOICE(68602, "Who ordered this burglary?", 68606);
    INFO_ADDCHOICE(68602, "I think it's time for you to go.", 68607);
}

func void DIA_THIEF_PQ110_FIGHT() {
    AI_STOPPROCESSINFOS(SELF);
    B_IMMEDIATEATTACKPLAYER(NONE_14000_THIEF, AR_KILL);
    PQ110_FIGHTWITHTHIEF = 1;
}

func void DIA_THIEF_PQ110_WHATYADOIN_WHO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_PQ110_WhatYaDoin_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_PQ110_WhatYaDoin_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_PQ110_WhatYaDoin_Who_03_03");
    DIA_THIEF_PQ110_FIGHT();
}

func void DIA_THIEF_PQ110_WHATYADOIN_TIME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_PQ110_WhatYaDoin_Time_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_PQ110_WhatYaDoin_Time_03_02");
    DIA_THIEF_PQ110_FIGHT();
}

