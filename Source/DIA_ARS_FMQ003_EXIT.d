instance DIA_ARS_FMQ003_EXIT(C_INFO) {
    NPC = 53238;
    NR = 999;
    CONDITION = DIA_ARS_FMQ003_EXIT_CONDITION;
    INFORMATION = DIA_ARS_FMQ003_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ARS_FMQ003_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ARS_FMQ003_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARS_FMQ003_VILLA(C_INFO) {
    NPC = 53238;
    NR = 1;
    CONDITION = DIA_ARS_FMQ003_VILLA_CONDITION;
    INFORMATION = DIA_ARS_FMQ003_VILLA_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ARS_FMQ003_VILLA_CONDITION() {
    if ((LOG_GETSTATUS(MIS_FMQ003)) == (LOG_RUNNING)) {
        if (((((NPC_GETDISTTOWP(SELF, "PARTM4_WEGAR_WAIT")) <= (500)) && ((NPC_GETDISTTOWP(VLK_6241_ANGRYCITIZEN01, "PARTM4_MADVLK_PATROL_01")) <= (500))) && ((NPC_GETDISTTOWP(VLK_6242_ARS_FMQ003, "PARTM4_MADVLK_PATROL_02")) <= (500))) && ((NPC_GETDISTTOWP(MIL_4016_WEGAR, "PARTM4_WEGAR_WAIT")) <= (500))) {
            if ((FMQ003_CUTSCENEVOLKER) == (2)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARS_FMQ003_VILLA_INFO() {
    DIACAM_ENABLE();
    TELEPORTNPCTOWP(1819, "PARTM4_PATH_101");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_03_10");
    INFO_CLEARCHOICES(75457);
    INFO_ADDCHOICE(75457, "Then maybe you should get out of here.", 75460);
    INFO_ADDCHOICE(75457, "Since you're not doing anything, we're moving on.", 75461);
}

func void DIA_ARS_FMQ003_VILLA_GOAWAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_GoAway_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_GoAway_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_GoAway_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_GoAway_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_GoAway_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_GoAway_03_06");
    INFO_CLEARCHOICES(75457);
    INFO_ADDCHOICE(75457, "Show me what you're hiding in there.", 75462);
    INFO_ADDCHOICE(75457, "Just don't do something stupid!", 75463);
}

func void DIA_ARS_FMQ003_VILLA_GOODNIGHT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_GoodNight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_GoodNight_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_GoodNight_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_GoodNight_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_GoodNight_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_GoodNight_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_GoodNight_15_07");
    FMQ003_ANGRYVLKTALK = 3;
    INFO_CLEARCHOICES(75457);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 62807);
}

func void DIA_ARS_FMQ003_VILLA_GOAWAY_SHOWME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_ShowMe_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_ShowMe_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_ShowMe_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_ShowMe_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_ShowMe_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_ShowMe_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_ShowMe_03_07");
    FMQ003_ANGRYVLKTALK = 1;
    INFO_CLEARCHOICES(75457);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 62807);
}

func void DIA_ARS_FMQ003_VILLA_GOAWAY_DONTBEDONG() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_DontBeDong_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_DontBeDong_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ars_FMQ003_Villa_DontBeDong_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ars_FMQ003_Villa_DontBeDong_03_04");
    FMQ003_ANGRYVLKTALK = 2;
    INFO_CLEARCHOICES(75457);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 62807);
}
