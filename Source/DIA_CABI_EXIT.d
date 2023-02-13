instance DIA_CABI_EXIT(C_INFO) {
    NPC = 52903;
    NR = 999;
    CONDITION = DIA_CABI_EXIT_CONDITION;
    INFORMATION = DIA_CABI_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CABI_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CABI_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CABI_SQ311_LETSGO(C_INFO) {
    NPC = 52903;
    NR = 1;
    CONDITION = DIA_CABI_SQ311_LETSGO_CONDITION;
    INFORMATION = DIA_CABI_SQ311_LETSGO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CABI_SQ311_LETSGO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ311)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 66114))) {
        if (((NPC_GETDISTTOWP(MIL_4040_CABI, "PARTM3_LEAN_03")) <= (500)) && ((NPC_GETDISTTOWP(MIL_4042_NEIR, "PARTM3_PATH_143")) <= (500))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_CABI_SQ311_LETSGO_INFO() {
    TRIA_INVITE(MIL_4042_NEIR);
    TRIA_START();
    AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_LetsGo_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Cabi_SQ311_LetsGo_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_LetsGo_03_03");
    INFO_CLEARCHOICES(66885);
    INFO_ADDCHOICE(66885, "I have to get ready. I'll meet you there.", 66889);
    INFO_ADDCHOICE(66885, "Let's go as soon as we can.", 66888);
}

func void DIA_CABI_SQ311_LETSGO_TELEPORT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Cabi_SQ311_LetsGo_Teleport_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_LetsGo_Teleport_03_02");
    TRIA_FINISH();
    INFO_CLEARCHOICES(66885);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 66891);
}

func void DIA_CABI_SQ311_LETSGO_LATER() {
    SQ311_CABIFOLLOW = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Cabi_SQ311_LetsGo_Later_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_LetsGo_Later_03_02");
    TRIA_FINISH();
    INFO_CLEARCHOICES(66885);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 66890);
}

func void CABI_SQ311_CHANGERTN() {
    NPC_EXCHANGEROUTINE(MIL_4040_CABI, "SQ311_WAIT_MINE");
    NPC_EXCHANGEROUTINE(MIL_4042_NEIR, "SQ311_WAIT_MINE");
}

func void CABI_SQ311_TELEPORT() {
    FADESCREENTOBLACKF(2, 66892, 1000);
}

func void CABI_SQ311_TELEPORT_FADESCREEN() {
    SQ311_CABIFOLLOW = 1;
    B_STARTOTHERROUTINE(MIL_4040_CABI, "SQ311_WAIT_MINE");
    B_STARTOTHERROUTINE(MIL_4042_NEIR, "SQ311_WAIT_MINE");
    TELEPORTNPCTOWP(52903, MIL_4040_CABI.WP);
    TELEPORTNPCTOWP(52951, MIL_4042_NEIR.WP);
    TELEPORTNPCTOWP(1819, "PART10_PATH2_56");
    B_PASSTIME(3);
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
}

instance DIA_SQ311_CABIFOLLOW(C_INFO) {
    NPC = 52903;
    NR = 1;
    CONDITION = DIA_SQ311_CABIFOLLOW_CONDITION;
    INFORMATION = DIA_SQ311_CABIFOLLOW_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Time to go.";
}

func int DIA_SQ311_CABIFOLLOW_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ311)) == (LOG_RUNNING)) && ((SQ311_CABIFOLLOW) == (1))) {
        if (((NPC_GETDISTTOWP(MIL_4040_CABI, "PART10_SQ311_GUARD_01")) <= (10000)) && ((NPC_GETDISTTOWP(MIL_4042_NEIR, "PART10_SQ311_GUARD_02")) <= (10000))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

var int SQ311_CABIFOLLOWFIRSTDIALOGUE;
func void DIA_SQ311_CABIFOLLOW_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Cabi_SQ311_FOLLOWME_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_FOLLOWME_03_02");
    if ((SQ311_CABIFOLLOWFIRSTDIALOGUE) == (FALSE)) {
        SQ311_CABIFOLLOWFIRSTDIALOGUE = TRUE;
        AI_OUTPUT(OTHER, SELF, "DIA_Cabi_SQ311_FOLLOWME_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_FOLLOWME_03_04");
        SQ311_MALENDEADSCENE();
    };
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 66897);
}

func void SQ311_CABIFOLLOWUS() {
    SQ311_CABIFOLLOW = 2;
    MIL_4040_CABI.AIVAR[15] = TRUE;
    MIL_4042_NEIR.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(MIL_4040_CABI, "SQ311_FOLLOW");
    B_STARTOTHERROUTINE(MIL_4042_NEIR, "SQ311_FOLLOW");
    NPC_REFRESH(MIL_4042_NEIR);
    B_STARTOTHERROUTINE(MIL_11130_LEWKO, TOT);
    NPC_REFRESH(MIL_11130_LEWKO);
    TELEPORTNPCTOWP(57204, MIL_11130_LEWKO.WP);
    AI_TELEPORTALWAYS(MIL_11130_LEWKO, MIL_11130_LEWKO.WP, TRUE);
}

func void CABI_SQ311_UNFOLLOW() {
    SQ311_CABIFOLLOW = 1;
    MIL_4040_CABI.AIVAR[15] = FALSE;
    MIL_4042_NEIR.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(MIL_4040_CABI, "SQ311_WAIT_MINE");
    B_STARTOTHERROUTINE(MIL_4042_NEIR, "SQ311_WAIT_MINE");
    NPC_REFRESH(MIL_4042_NEIR);
}

instance DIA_CABI_SQ311_WRONGWAY(C_INFO) {
    NPC = 52903;
    NR = 1;
    CONDITION = DIA_CABI_SQ311_WRONGWAY_CONDITION;
    INFORMATION = DIA_CABI_SQ311_WRONGWAY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CABI_SQ311_WRONGWAY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ311)) == (LOG_RUNNING)) && ((SQ311_CABIFOLLOW) == (2))) && ((NPC_GETDISTTOWP(SELF, "PART10_MINE_35")) >= (8000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CABI_SQ311_WRONGWAY_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_WrongWay_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 66898);
}

instance DIA_CABI_SQ311_AFTERFIGHT(C_INFO) {
    NPC = 52903;
    NR = 1;
    CONDITION = DIA_CABI_SQ311_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_CABI_SQ311_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CABI_SQ311_AFTERFIGHT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ311)) == (LOG_RUNNING)) && ((SQ311_FIGHTWITHLEWKO) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CABI_SQ311_AFTERFIGHT_INFO() {
    SQ311_FIGHTWITHLEWKO = 3;
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_AfterFight_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_AfterFight_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Cabi_SQ311_AfterFight_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_AfterFight_03_04");
    if ((HERO.GUILD) == (GIL_MIL)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_AfterFight_03_05");
    };
    if ((HERO.GUILD) == (GIL_SLD)) {
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_AfterFight_03_06");
        AI_OUTPUT(OTHER, SELF, "DIA_Cabi_SQ311_AfterFight_15_07");
    };
    if ((HERO.GUILD) == (GIL_MIL)) {
        AI_LOGENTRY(TOPIC_SQ311, LOG_SQ311_CABI_RAPORT_V1);
    };
    if ((HERO.GUILD) == (GIL_SLD)) {
        AI_LOGENTRY(TOPIC_SQ311, LOG_SQ311_CABI_RAPORT_V2);
    };
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CABI_SQ311_GOREPORT(C_INFO) {
    NPC = 52903;
    NR = 1;
    CONDITION = DIA_CABI_SQ311_GOREPORT_CONDITION;
    INFORMATION = DIA_CABI_SQ311_GOREPORT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CABI_SQ311_GOREPORT_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ311)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 66902))) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CABI_SQ311_GOREPORT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Cabi_SQ311_GoReport_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CABI_HELLO(C_INFO) {
    NPC = 52903;
    NR = 1;
    CONDITION = DIA_CABI_HELLO_CONDITION;
    INFORMATION = DIA_CABI_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you tell me what you do here?";
}

func int DIA_CABI_HELLO_CONDITION() {
    if (!(NPC_KNOWSINFO(OTHER, 66885))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CABI_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_AbouYou");
    AI_OUTPUT(SELF, OTHER, "DIA_Cabi_Hello_03_01");
}

instance DIA_CABI_AMBIENT(C_INFO) {
    NPC = 52903;
    NR = 998;
    CONDITION = DIA_CABI_AMBIENT_CONDITION;
    INFORMATION = DIA_CABI_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_CABI_AMBIENT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ311)) != (LOG_RUNNING)) {
        if ((NPC_KNOWSINFO(OTHER, 66908)) || (NPC_KNOWSINFO(OTHER, 66885))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_CABI_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if (((LOG_GETSTATUS(MIS_SQ311)) != (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_KQ402)) != (LOG_SUCCESS))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Cabi_Ambient_03_01");
    };
    if (((LOG_GETSTATUS(MIS_SQ311)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_KQ402)) != (LOG_SUCCESS))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Cabi_Ambient_03_02");
    };
    if ((LOG_GETSTATUS(MIS_KQ402)) == (LOG_SUCCESS)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Cabi_Ambient_03_03");
    };
}

instance DIA_CABI_PICKPOCKET(C_INFO) {
    NPC = 52903;
    NR = 900;
    CONDITION = DIA_CABI_PICKPOCKET_CONDITION;
    INFORMATION = DIA_CABI_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_CABI_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CABI_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(66914);
    INFO_ADDCHOICE(66914, DIALOG_BACK, 66918);
    INFO_ADDCHOICE(66914, DIALOG_PICKPOCKET, 66917);
}

func void DIA_CABI_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(66914);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(66914);
}

func void DIA_CABI_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(66914);
}
