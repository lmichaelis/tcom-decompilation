instance DIA_FARMER_EXIT(C_INFO) {
    NPC = 0xe071;
    NR = 999;
    CONDITION = DIA_FARMER_EXIT_CONDITION;
    INFORMATION = DIA_FARMER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FARMER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_FARMER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FARMER_BUSY(C_INFO) {
    NPC = 0xe071;
    NR = 1;
    CONDITION = DIA_FARMER_BUSY_CONDITION;
    INFORMATION = DIA_FARMER_BUSY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_FARMER_BUSY_CONDITION() {
    if (((NPC_HASITEMS(OTHER, 0x90cc)) && ((LOG_GETSTATUS(MIS_Q106)) == (LOG_RUNNING))) && ((NPC_KNOWSINFO(OTHER, 0x155b3)) == (FALSE))) {
        return FALSE;
    };
    if (((NPC_KNOWSINFO(OTHER, 0x1575a)) && ((LOG_GETSTATUS(MIS_GQ001)) == (LOG_RUNNING))) && ((NPC_KNOWSINFO(OTHER, 0x155b6)) == (FALSE))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FARMER_BUSY_INFO() {
    if ((LOG_GETSTATUS(MIS_SQ416)) == (LOG_SUCCESS)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_SAY(SELF, OTHER, "$GREETINGS_FromFriend");
        B_SAY(SELF, OTHER, "$SQ416_GOODJOB_02");
    };
    if (((HERO.GUILD) == (GIL_SLD)) || ((HERO.GUILD) == (GIL_MIL))) {
        DIA_IMBUSY_CALM();
    };
    if ((SILBACHREPUTATION) >= (5)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        DIA_IMBUSY_ANGRY();
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_STANDUP();
    B_SAY(SELF, OTHER, "$IMBUSY_ANGRY");
    AI_PLAYANI(SELF, "T_PISSOFF");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FARMER_WHATHAPPENDHERE(C_INFO) {
    NPC = 0xe071;
    NR = 10;
    CONDITION = DIA_FARMER_WHATHAPPENDHERE_CONDITION;
    INFORMATION = DIA_FARMER_WHATHAPPENDHERE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What kind of assemblage is this?";
}

func int DIA_FARMER_WHATHAPPENDHERE_CONDITION() {
    if ((NPC_HASITEMS(OTHER, 0x90cc)) && ((LOG_GETSTATUS(MIS_Q106)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FARMER_WHATHAPPENDHERE_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Farmer_WhatHappendHere_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer_WhatHappendHere_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Farmer_WhatHappendHere_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer_WhatHappendHere_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer_WhatHappendHere_03_05");
    AI_RESETFACEANI(SELF);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FARMER_YOURFAULT(C_INFO) {
    NPC = 0xe071;
    NR = 11;
    CONDITION = DIA_FARMER_YOURFAULT_CONDITION;
    INFORMATION = DIA_FARMER_YOURFAULT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FARMER_YOURFAULT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x1575a)) && ((LOG_GETSTATUS(MIS_GQ001)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FARMER_YOURFAULT_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer_YourFault_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Farmer_YourFault_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer_YourFault_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer_YourFault_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer_YourFault_03_05");
    INFO_CLEARCHOICES(0x155b6);
    INFO_ADDCHOICE(0x155b6, "We're not too fond of Fabio either.", 0x155ba);
    INFO_ADDCHOICE(0x155b6, "Why would one of us kidnap another of ours?", 0x155bb);
}

func void DIA_FARMER_END_YOURFAULT() {
    INFO_CLEARCHOICES(0x155b6);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(BAU_11028_FARMER, START);
    AI_RESETFACEANI(SELF);
}

func void DIA_FARMER_YOURFAULT_IDONTLIKEFABIO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Farmer_YourFault_IDontLikeFabio_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer_YourFault_IDontLikeFabio_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer_YourFault_IDontLikeFabio_03_03");
    DIA_FARMER_END_YOURFAULT();
}

func void DIA_FARMER_YOURFAULT_WHYFABIO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Farmer_YourFault_WhyFabio_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer_YourFault_WhyFabio_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Farmer_YourFault_WhyFabio_03_03");
    DIA_FARMER_END_YOURFAULT();
}

