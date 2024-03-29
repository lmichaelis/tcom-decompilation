instance DIA_LIMAN_EXIT(C_INFO) {
    NPC = 55895;
    NR = 999;
    CONDITION = DIA_LIMAN_EXIT_CONDITION;
    INFORMATION = DIA_LIMAN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LIMAN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LIMAN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LIMAN_FAQ004(C_INFO) {
    NPC = 55895;
    NR = 1;
    CONDITION = DIA_LIMAN_FAQ004_CONDITION;
    INFORMATION = DIA_LIMAN_FAQ004_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You want to make some money?";
}

func int DIA_LIMAN_FAQ004_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 75080)) && ((LOG_GETSTATUS(MIS_FAQ004)) == (LOG_RUNNING))) && (NPC_KNOWSINFO(OTHER, 77731))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAN_FAQ004_ARAXOS_ENOUGH() {
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FAQ004_Enough_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FAQ004_Enough_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_FAQ004_Enough_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FAQ004_Enough_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FAQ004_Enough_03_05");
    INFO_CLEARCHOICES(77707);
}

func void DIA_LIMAN_FAQ004_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_FAQ004_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FAQ004_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_FAQ004_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FAQ004_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_FAQ004_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FAQ004_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FAQ004_03_07");
    INFO_CLEARCHOICES(77707);
    INFO_ADDCHOICE(77707, "Mercenaries will be guarding your goods.", 77711);
    INFO_ADDCHOICE(77707, "Reliable earnings - The Guild is not indebted to its members.", 77712);
    INFO_ADDCHOICE(77707, "I don't know of anyone who has come out badly from working with the Guild.", 77713);
}

func void DIA_LIMAN_FAQ004_GUARD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_FAQ004_Guard_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FAQ004_Guard_03_02");
    FAQ004_LIMANINFORMATION = (FAQ004_LIMANINFORMATION) + (1);
    if ((FAQ004_LIMANINFORMATION) == (3)) {
        DIA_LIMAN_FAQ004_ARAXOS_ENOUGH();
    };
}

func void DIA_LIMAN_FAQ004_GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_FAQ004_Gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FAQ004_Gold_03_02");
    FAQ004_LIMANINFORMATION = (FAQ004_LIMANINFORMATION) + (1);
    if ((FAQ004_LIMANINFORMATION) == (3)) {
        DIA_LIMAN_FAQ004_ARAXOS_ENOUGH();
    };
}

func void DIA_LIMAN_FAQ004_ARAXOS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_FAQ004_Araxos_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FAQ004_Araxos_03_02");
    FAQ004_LIMANINFORMATION = (FAQ004_LIMANINFORMATION) + (1);
    if ((FAQ004_LIMANINFORMATION) == (3)) {
        DIA_LIMAN_FAQ004_ARAXOS_ENOUGH();
    };
}

instance DIA_LIMAN_HOW(C_INFO) {
    NPC = 55895;
    NR = 2;
    CONDITION = DIA_LIMAN_HOW_CONDITION;
    INFORMATION = DIA_LIMAN_HOW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "In what way?";
}

func int DIA_LIMAN_HOW_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 77707)) && ((LOG_GETSTATUS(MIS_FAQ004)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAN_HOW_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_How_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_How_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_How_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_How_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_How_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_How_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_How_03_07");
    AI_LOGENTRY(TOPIC_FAQ004, LOG_FAQ004_MISSINGFISHERMAN);
}

instance DIA_LIMAN_FOUNDFISHERMAN(C_INFO) {
    NPC = 55895;
    NR = 3;
    CONDITION = DIA_LIMAN_FOUNDFISHERMAN_CONDITION;
    INFORMATION = DIA_LIMAN_FOUNDFISHERMAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Your friend is dead.";
}

func int DIA_LIMAN_FOUNDFISHERMAN_CONDITION() {
    if ((((NPC_HASITEMS(OTHER, 37177)) >= (1)) && (NPC_KNOWSINFO(OTHER, 77714))) && ((LOG_GETSTATUS(MIS_FAQ004)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAN_FOUNDFISHERMAN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_FoundFisherman_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FoundFisherman_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_FoundFisherman_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FoundFisherman_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FoundFisherman_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_FoundFisherman_15_06");
    B_GIVEINVITEMS(OTHER, SELF, 37177, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_FoundFisherman_03_07");
}

instance DIA_LIMAN_GUILD(C_INFO) {
    NPC = 55895;
    NR = 4;
    CONDITION = DIA_LIMAN_GUILD_CONDITION;
    INFORMATION = DIA_LIMAN_GUILD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What about your opinion of the Guild?";
}

func int DIA_LIMAN_GUILD_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 77717)) && ((LOG_GETSTATUS(MIS_FAQ004)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAN_GUILD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_Guild_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_Guild_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_Guild_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_Guild_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_Guild_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_Guild_03_06");
}

instance DIA_LIMAN_REPAIR(C_INFO) {
    NPC = 55895;
    NR = 5;
    CONDITION = DIA_LIMAN_REPAIR_CONDITION;
    INFORMATION = DIA_LIMAN_REPAIR_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Give me the net, I'll manage somehow.";
}

func int DIA_LIMAN_REPAIR_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 77720)) && ((LOG_GETSTATUS(MIS_FAQ004)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAN_REPAIR_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_Repair_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_Repair_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_Repair_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_Repair_15_04");
    AI_LOGENTRY(TOPIC_FAQ004, LOG_FAQ004_NOTENOUGH);
    B_GIVEINVITEMS(SELF, OTHER, 37177, 1);
}

instance DIA_LIMAN_NETDONE(C_INFO) {
    NPC = 55895;
    NR = 1;
    CONDITION = DIA_LIMAN_NETDONE_CONDITION;
    INFORMATION = DIA_LIMAN_NETDONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Your net, safe and sound.";
}

func int DIA_LIMAN_NETDONE_CONDITION() {
    if ((((NPC_HASITEMS(OTHER, 37178)) >= (1)) && (NPC_KNOWSINFO(OTHER, 77723))) && ((LOG_GETSTATUS(MIS_FAQ004)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAN_NETDONE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_NetDone_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_NetDone_03_02");
    B_STANDUP();
    CREATEINVITEMS(SELF, 36026, 1);
    B_STOPLOOKAT(SELF);
    AI_USEITEMTOSTATE(SELF, 36026, 1);
    AI_WAIT(SELF, 1073741824);
    AI_USEITEMTOSTATE(SELF, 36026, -(1));
    B_LOOKATNPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_NetDone_03_03");
    if ((FAQ004_FISHINGNETDONEBYBALNI) == (TRUE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Liman_NetDone_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Liman_NetDone_03_05");
        AI_OUTPUT(OTHER, SELF, "DIA_Liman_NetDone_15_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Liman_NetDone_03_07");
    };
    if ((FAQ004_FISHINGNETDONEBYLATHI) == (TRUE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Liman_NetDone_15_08");
        AI_OUTPUT(SELF, OTHER, "DIA_Liman_NetDone_03_09");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_NetDone_03_11");
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_NetDone_15_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_NetDone_03_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_NetDone_03_14");
    AI_OUTPUT(OTHER, SELF, "DIA_Liman_NetDone_15_15");
    AI_LOGENTRY(TOPIC_FAQ004, LOG_FAQ004_LIMANAGREED);
    B_GIVEINVITEMS(OTHER, SELF, 37178, 1);
}

instance DIA_LIMAN_Q208_YANNICK(C_INFO) {
    NPC = 55895;
    NR = 1;
    CONDITION = DIA_PART4_FISHERMAN_Q208_YANNICK_CONDITION;
    INFORMATION = DIA_LIMAN_Q208_YANNICK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Do you know where I can find Yannick?";
}

func void DIA_LIMAN_Q208_YANNICK_INFO() {
    DIA_PART4_FISHERMAN_Q208_YANNICK_INFO();
}

instance DIA_LIMAN_HELLO(C_INFO) {
    NPC = 55895;
    NR = 1;
    CONDITION = DIA_LIMAN_HELLO_CONDITION;
    INFORMATION = DIA_LIMAN_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_LIMAN_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_LIMAN_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhoAreYou");
    AI_OUTPUT(SELF, OTHER, "DIA_Liman_Hello_03_01");
}

instance DIA_LIMAN_AMBIENT(C_INFO) {
    NPC = 55895;
    NR = 998;
    CONDITION = DIA_LIMAN_AMBIENT_CONDITION;
    INFORMATION = DIA_LIMAN_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_LIMAN_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 77731)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAN_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if (((LOG_GETSTATUS(MIS_FAQ004)) != (LOG_SUCCESS)) && ((KAPITEL) != (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Liman_Ambient_03_01");
    };
    if (((LOG_GETSTATUS(MIS_FAQ004)) == (LOG_SUCCESS)) && ((KAPITEL) != (5))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Liman_Ambient_03_02");
    };
    if ((KAPITEL) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Liman_Ambient_03_03");
    };
}

instance DIA_LIMAN_PICKPOCKET(C_INFO) {
    NPC = 55895;
    NR = 900;
    CONDITION = DIA_LIMAN_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LIMAN_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_LIMAN_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LIMAN_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(77737);
    INFO_ADDCHOICE(77737, DIALOG_BACK, 77741);
    INFO_ADDCHOICE(77737, DIALOG_PICKPOCKET, 77740);
}

func void DIA_LIMAN_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 33972, 1);
        B_GIVEINVITEMS(SELF, OTHER, 33972, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(77737);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(77737);
}

func void DIA_LIMAN_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(77737);
}

