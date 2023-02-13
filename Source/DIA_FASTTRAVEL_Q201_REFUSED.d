instance DIA_FASTTRAVEL_Q201_REFUSED(C_INFO) {
    NPC = 57394;
    NR = 1;
    CONDITION = DIA_FASTTRAVEL_Q201_REFUSED_CONDITION;
    INFORMATION = DIA_FASTTRAVEL_Q201_REFUSED_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FASTTRAVEL_Q201_REFUSED_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FASTTRAVEL_Q201_REFUSED_INFO() {
    Q201_SPAWNEARAXOSFASTTRAVEL = 2;
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_FASTTRAVEL_Q201_Refused_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_03_06");
    AI_LOGENTRY(TOPIC_Q201, LOG_Q201_FASTTRAVEL);
    INFO_CLEARCHOICES(90069);
    INFO_ADDCHOICE(90069, "Isn't there some other way to get into town?", 90073);
    INFO_ADDCHOICE(90069, "And what business do you have in that?", 90072);
}

func void DIA_FASTTRAVEL_Q201_REFUSED_BUISNESS() {
    AI_OUTPUT(OTHER, SELF, "DIA_FASTTRAVEL_Q201_Refused_Buisness_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_Buisness_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_Buisness_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_Buisness_03_04");
    if ((ITWR_ABOUTARAXOSFASTTRAVEL_READ) == (FALSE)) {
        ITWR_ABOUTARAXOSFASTTRAVEL_READ = TRUE;
        FASTTRAVEL_ARAXOS_LOGENTRY();
    };
}

func void DIA_FASTTRAVEL_Q201_REFUSED_ANOTHER() {
    AI_OUTPUT(OTHER, SELF, "DIA_FASTTRAVEL_Q201_Refused_Another_15_01");
    AI_RESETFACEANI(SELF);
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_Another_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_Another_03_03");
    AI_LOGENTRY(TOPIC_Q201, LOG_Q201_MONEY);
    INFO_CLEARCHOICES(90069);
    if (NPC_KNOWSINFO(OTHER, 85263)) {
        INFO_ADDCHOICE(90069, "Do you think woodcutters could write me such a document?", 90074);
    };
}

func void DIA_FASTTRAVEL_Q201_REFUSED_ANOTHER_WOODCUTTERS() {
    Q201_MARVINIDEAWOODCUTTERARMOR = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_FASTTRAVEL_Q201_Refused_Woodcutters_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_Woodcutters_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_Refused_Woodcutters_03_03");
    AI_LOGENTRY(TOPIC_Q201, LOG_Q201_WOODCUTTERS);
}

instance DIA_FASTTRAVEL_Q201_FASTTRAVEL_SILBACH(C_INFO) {
    NPC = 57394;
    NR = 1;
    CONDITION = DIA_FASTTRAVEL_Q201_FASTTRAVEL_SILBACH_CONDITION;
    INFORMATION = DIA_FASTTRAVEL_Q201_FASTTRAVEL_SILBACH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Take me to Silbach. (10 GP)";
}

func int DIA_FASTTRAVEL_Q201_FASTTRAVEL_SILBACH_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 90069)) && ((Q201_SPAWNEARAXOSFASTTRAVEL) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FASTTRAVEL_Q201_FASTTRAVEL_SILBACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_FASTTRAVEL_Q201_FastTravel_Silbach_15_01");
    if ((NPC_HASITEMS(OTHER, 34203)) >= (FASTTRAVEL_SLD)) {
        Q201_SPAWNEARAXOSFASTTRAVEL = 3;
        FASTTRAVEL_PLACE_SILBACH = 1;
        B_GIVEINVITEMS(OTHER, SELF, 34203, FASTTRAVEL_SLD);
        AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_FastTravel_Silbach_03_02");
        AI_STOPPROCESSINFOS(SELF);
        AI_FUNCTION(SELF, 42507);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_FastTravel_Silbach_03_03");
}

instance DIA_FASTTRAVEL_Q201_FASTTRAVEL_UNLOCKED(C_INFO) {
    NPC = 57394;
    NR = 2;
    CONDITION = DIA_FASTTRAVEL_Q201_FASTTRAVEL_UNLOCKED_CONDITION;
    INFORMATION = DIA_FASTTRAVEL_Q201_FASTTRAVEL_UNLOCKED_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FASTTRAVEL_Q201_FASTTRAVEL_UNLOCKED_CONDITION() {
    if ((Q201_SPAWNEARAXOSFASTTRAVEL) == (4)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FASTTRAVEL_Q201_FASTTRAVEL_UNLOCKED_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_FASTTRAVEL_Q201_FastTravel_Unlocked_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

