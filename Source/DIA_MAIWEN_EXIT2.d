instance DIA_MAIWEN_EXIT2(C_INFO) {
    NPC = 51398;
    NR = 999;
    CONDITION = DIA_MAIWEN_EXIT2_CONDITION;
    INFORMATION = DIA_MAIWEN_EXIT2_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_MAIWEN_EXIT2_CONDITION() {
    return TRUE;
}

func void DIA_MAIWEN_EXIT2_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MAIWEN_Q104_WORKFORALBYN(C_INFO) {
    NPC = 51398;
    NR = 1;
    CONDITION = DIA_MAIWEN_Q104_WORKFORALBYN_CONDITION;
    INFORMATION = DIA_MAIWEN_Q104_WORKFORALBYN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you like the conditions here?";
}

func int DIA_MAIWEN_Q104_WORKFORALBYN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ103)) == (LOG_SUCCESS)) && ((NPC_GETDISTTOWP(SELF, "VILLAGE_PATH_171")) <= (3000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MAIWEN_Q104_WORKFORALBYN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_Q104_WorkForAlbyn_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_Q104_WorkForAlbyn_11_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_Q104_WorkForAlbyn_11_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_Q104_WorkForAlbyn_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_Q104_WorkForAlbyn_11_04");
}

instance DIA_MAIWEN_OKAY(C_INFO) {
    NPC = 51398;
    NR = 1;
    CONDITION = DIA_MAIWEN_OKAY_CONDITION;
    INFORMATION = DIA_MAIWEN_OKAY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are you all right?";
}

func int DIA_MAIWEN_OKAY_CONDITION() {
    if (((((((FABIOTOSILBACH) == (TRUE)) && (NPC_KNOWSINFO(OTHER, 91219))) && (NPC_ISDEAD(CAVE_LURKER_01))) && (NPC_ISDEAD(CAVE_LURKER_02))) && (NPC_ISINSTATE(SELF, 61599))) && (!(NPC_KNOWSINFO(OTHER, 91356)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MAIWEN_OKAY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_Okay_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_Okay_11_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MAIWEN_FOUNDHELP(C_INFO) {
    NPC = 51398;
    NR = 15;
    CONDITION = DIA_MAIWEN_FOUNDHELP_CONDITION;
    INFORMATION = DIA_MAIWEN_FOUNDHELP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MAIWEN_FOUNDHELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ103)) == (LOG_RUNNING)) && ((SQ103_BEASTROAR) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MAIWEN_FOUNDHELP_INFO() {
    SELF.FLAGS = NPC_FLAG_IMPORTANT;
    SELF.AIVAR[15] = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundHelp_11_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundHelp_11_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundHelp_11_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_FoundHelp_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundHelp_11_05");
    AI_STOPLOOKAT(SELF);
    AI_PLAYANIBS(SELF, "T_STAND_2_TIREDSIT", BS_SIT);
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_FoundHelp_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundHelp_11_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_FoundHelp_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundHelp_11_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundHelp_11_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_FoundHelp_15_11");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundHelp_11_12");
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_FoundHelp_15_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundHelp_11_14");
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_FoundHelp_15_15");
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_FoundHelp_15_16");
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANIBS(SELF, "T_TIREDSIT_2_STAND", BS_SIT);
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundHelp_11_17");
    B_GIVEPLAYERXP(XP_SQ103_SAVEDMAIWEN);
    AI_FUNCTION(SELF, 91542);
    AI_STOPPROCESSINFOS(SELF);
}

func void MAIWEN_SQ103_GRAVE() {
    FADESCREENTOBLACKF(1, 91543, 1000);
}

func void MAIWEN_SQ103_GRAVE_FADESCREEN() {
    SQ103_MAWIENGRAVE = 1;
    if ((SQ103_GOWITHRUPERT) == (1)) {
        B_LOGENTRY(TOPIC_SQ103, LOG_SQ103_MAIWEN_GOWITHRUPERT);
    };
    if ((SQ103_FOUNDMAIWENALONE) == (1)) {
        SQ103_MAIWENHOME = 1;
        B_LOGENTRY(TOPIC_SQ103, LOG_SQ103_MAIWEN_GOALONE);
        LOG_SETSTATUS(_@(MIS_SQ103), TOPIC_SQ103, LOG_SUCCESS);
        B_GIVEPLAYERXP(XP_SQ103_FINISH);
    };
    B_REMOVENPC(51388);
    TELEPORTNPCTOWP(1819, "PART_13_DARRYLGRAVE");
    B_STARTOTHERROUTINE(NONE_100011_MAIWEN, "SQ103_CAVEWAIT");
    NPC_REFRESH(NONE_100011_MAIWEN);
    TELEPORTNPCTOWP(51398, NONE_100011_MAIWEN.WP);
    if ((SQ103_GOWITHRUPERT) == (TRUE)) {
        B_STARTOTHERROUTINE(NONE_100007_RUPERT, "SQ103_CAVEWAIT");
        NPC_REFRESH(NONE_100007_RUPERT);
        TELEPORTNPCTOWP(51549, NONE_100007_RUPERT.WP);
    };
    FF_APPLYONCEEXTGT(62357, 0, -(1));
    WLD_SENDTRIGGER("DARRYLGRAVE");
    HERO.AIVAR[4] = FALSE;
    B_PASSTIME(1);
    FADESCREENFROMBLACK(1);
}

instance DIA_MAIWEN_SQ103_THANKS(C_INFO) {
    NPC = 51398;
    NR = 1;
    CONDITION = DIA_MAIWEN_SQ103_THANKS_CONDITION;
    INFORMATION = DIA_MAIWEN_SQ103_THANKS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MAIWEN_SQ103_THANKS_CONDITION() {
    if ((SQ103_MAWIENGRAVE) == (1)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MAIWEN_SQ103_THANKS_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_SQ103_Thanks_11_01");
    NPC_EXCHANGEROUTINE(SELF, "Village");
}

instance DIA_MAIWEN_VILLAGETELEPORT(C_INFO) {
    NPC = 51398;
    NR = 1;
    CONDITION = DIA_MAIWEN_VILLAGETELEPORT_CONDITION;
    INFORMATION = DIA_MAIWEN_VILLAGETELEPORT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Come, I'll walk you to the village. (fast travel)";
}

func int DIA_MAIWEN_VILLAGETELEPORT_CONDITION() {
    if (((SQ103_MAWIENGRAVE) == (1)) && ((NPC_GETDISTTOWP(SELF, "PART_13_NAV_86")) <= (2500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MAIWEN_VILLAGETELEPORT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_VillageTeleport_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 91550);
}

func void MAIWEN_VILLAGETELEPORT() {
    FADESCREENTOBLACKF(1, 91551, 1000);
}

func void MAIWEN_VILLAGETELEPORT_FADESCREEN() {
    TELEPORTNPCTOWP(1819, "VILLAGE_PATH_38");
    NPC_REFRESH(NONE_100011_MAIWEN);
    TELEPORTNPCTOWP(51398, NONE_100011_MAIWEN.WP);
    if ((SQ103_GOWITHRUPERT) == (TRUE)) {
        B_STARTOTHERROUTINE(NONE_100007_RUPERT, PUB01);
        NPC_REFRESH(NONE_100007_RUPERT);
        TELEPORTNPCTOWP(51549, NONE_100007_RUPERT.WP);
    };
    AI_STOPPROCESSINFOS(HERO);
    FADESCREENFROMBLACK(1);
    HERO.AIVAR[4] = FALSE;
}

instance DIA_MAIWEN_FOUNDRUNE(C_INFO) {
    NPC = 51398;
    NR = 1;
    CONDITION = DIA_MAIWEN_FOUNDRUNE_CONDITION;
    INFORMATION = DIA_MAIWEN_FOUNDRUNE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_MAIWEN_FOUNDRUNE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ103)) == (LOG_SUCCESS)) && ((SQ103_MAWIENGRAVE) == (1))) && ((TELEPORT_LURKER) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MAIWEN_FOUNDRUNE_INFO() {
    CREATEINVITEMS(SELF, 38075, 1);
    B_GIVEINVITEMS(SELF, OTHER, 38075, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundRune_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_FoundRune_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_MAIWEN_Q104(C_INFO) {
    NPC = 51398;
    NR = 1;
    CONDITION = DIA_MAIWEN_Q104_CONDITION;
    INFORMATION = DIA_MAIWEN_Q104_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "How are you holding up?";
}

func int DIA_MAIWEN_Q104_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 87695)) && ((LOG_GETSTATUS(MIS_SQ103)) == (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_Q104)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MAIWEN_Q104_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_Q104_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_Q104_11_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_Q104_11_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_Q104_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_Q104_11_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_Q104_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_Q104_11_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_Q104_11_10");
    B_STANDUP();
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q104Wait");
    Q104_MAIWENBROTHERLYWORK = 1;
    AI_LOGENTRY(TOPIC_Q104, LOG_Q104_MAIWEN);
}

instance DIA_MAIWEN_GQ001_WHEREISJORN(C_INFO) {
    NPC = 51398;
    NR = 15;
    CONDITION = DIA_MAIWEN_GQ001_WHEREISJORN_CONDITION;
    INFORMATION = DIA_MAIWEN_GQ001_WHEREISJORN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could I ask you a few questions?";
}

func int DIA_MAIWEN_GQ001_WHEREISJORN_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 87898)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_MAIWEN_GQ001_WHEREISJORN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_GQ001_WhereIsJorn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_11_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_GQ001_WhereIsJorn_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_11_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_11_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_11_06");
    INFO_CLEARCHOICES(91558);
    INFO_ADDCHOICE(91558, "Where did the broad-shouldered guy go?", 91561);
    INFO_ADDCHOICE(91558, "When did you see him?", 91562);
}

func void DIA_MAIWEN_GQ001_WHEREISJORN_WHEREDIDHEGO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_11_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_11_03");
    GQ001_MAIWENINFORMATIONJORN = (GQ001_MAIWENINFORMATIONJORN) + (1);
    if ((GQ001_MAIWENINFORMATIONJORN) >= (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_11_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_11_06");
        AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_15_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_11_08");
        AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_15_09");
        AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_11_10");
        INFO_CLEARCHOICES(91558);
        AI_STOPPROCESSINFOS(SELF);
        AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_MAIWEN);
    };
}

func void DIA_MAIWEN_GQ001_WHEREISJORN_WHEN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_GQ001_WhereIsJorn_When_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_When_11_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_When_11_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_When_11_04");
    GQ001_MAIWENINFORMATIONJORN = (GQ001_MAIWENINFORMATIONJORN) + (1);
    if ((GQ001_MAIWENINFORMATIONJORN) >= (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_11_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_11_06");
        AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_15_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_11_08");
        AI_OUTPUT(OTHER, SELF, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_15_09");
        AI_OUTPUT(SELF, OTHER, "DIA_Maiwen_GQ001_WhereIsJorn_WhereDidHeGo_11_10");
        GQ001_VILLAGEINFORMATIONJORNCOUNT = (GQ001_VILLAGEINFORMATIONJORNCOUNT) + (1);
        INFO_CLEARCHOICES(91558);
        AI_STOPPROCESSINFOS(SELF);
        AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_MAIWEN);
    };
}
