instance DIA_HOMER_EXIT(C_INFO) {
    NPC = 0xe5e0;
    NR = 999;
    CONDITION = DIA_HOMER_EXIT_CONDITION;
    INFORMATION = DIA_HOMER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HOMER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HOMER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOMER_SQ317_HELLO(C_INFO) {
    NPC = 0xe5e0;
    NR = 1;
    CONDITION = DIA_HOMER_SQ317_HELLO_CONDITION;
    INFORMATION = DIA_HOMER_SQ317_HELLO_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HOMER_SQ317_HELLO_CONDITION() {
    if (((KAPITEL) == (3)) && ((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS))) {
        return FALSE;
    };
    if ((((KAPITEL) >= (3)) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((NPC_KNOWSINFO(OTHER, 0x14c15)) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_SQ317_HELLO_INFO() {
    ACH_6_HOMER = TRUE;
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Hello_03_01");
    AI_RESETFACEANI(SELF);
    if ((SQ317_STARTQUEST) == (FALSE)) {
        SQ317_STARTQUEST = TRUE;
        LOG_CREATETOPIC(TOPIC_SQ317, LOG_MISSION);
        LOG_SETSTATUS(_@(MIS_SQ317), TOPIC_SQ317, LOG_RUNNING);
        if (((KAPITEL) == (3)) && ((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS))) {
            AI_LOGENTRY(TOPIC_SQ317, LOG_SQ317_START_V2);
        } else {
            AI_LOGENTRY(TOPIC_SQ317, LOG_SQ317_START);
        };
    };
    AI_STOPPROCESSINFOS(SELF);
}

var int DIA_HOMER_SQ317_HELLO_INFO.SQ317_STARTQUEST = 0;
instance DIA_HOMER_SQ317_FREE(C_INFO) {
    NPC = 0xe5e0;
    NR = 1;
    CONDITION = DIA_HOMER_SQ317_FREE_CONDITION;
    INFORMATION = DIA_HOMER_SQ317_FREE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOMER_SQ317_FREE_CONDITION() {
    if (((KAPITEL) == (3)) && ((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS))) {
        return FALSE;
    };
    if (((LOG_GETSTATUS(MIS_SQ317)) == (LOG_RUNNING)) && ((SQ317_DINKELWANTSGOLD) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_SQ317_FREE_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Free_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Free_03_02");
    CREATEINVITEMS(SELF, 0x9498, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x9498, 1);
    AI_LOGENTRY(TOPIC_SQ317, LOG_SQ317_FINISH_V1);
    SQ317_FINISHQUEST();
    NPC_EXCHANGEROUTINE(SELF, TOT);
}

instance DIA_HOMER_SQ317_TOLDYOU(C_INFO) {
    NPC = 0xe5e0;
    NR = 1;
    CONDITION = DIA_HOMER_SQ317_TOLDYOU_CONDITION;
    INFORMATION = DIA_HOMER_SQ317_TOLDYOU_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOMER_SQ317_TOLDYOU_CONDITION() {
    if (((KAPITEL) == (3)) && ((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS))) {
        return FALSE;
    };
    if ((((LOG_GETSTATUS(MIS_SQ317)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x14c15))) && ((SQ317_DINKELWANTSGOLD) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_SQ317_TOLDYOU_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_ToldYou_03_01");
    AI_RESETFACEANI(SELF);
}

instance DIA_HOMER_SQ317_SOMEHOW(C_INFO) {
    NPC = 0xe5e0;
    NR = 1;
    CONDITION = DIA_HOMER_SQ317_SOMEHOW_CONDITION;
    INFORMATION = DIA_HOMER_SQ317_SOMEHOW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I can get you out of here somehow.";
}

func int DIA_HOMER_SQ317_SOMEHOW_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ317)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x143ff))) && ((SQ317_DINKELWANTSGOLD) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_SQ317_SOMEHOW_INFO() {
    SQ317_HOMERSPLAN = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Homer_SQ317_Somehow_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Somehow_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Somehow_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Somehow_03_04");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Homer_SQ317_Somehow_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Somehow_03_06");
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_SQ317, LOG_SQ317_HOMER_PLAN);
}

instance DIA_HOMER_SQ317_LEAVEME(C_INFO) {
    NPC = 0xe5e0;
    NR = 1;
    CONDITION = DIA_HOMER_SQ317_LEAVEME_CONDITION;
    INFORMATION = DIA_HOMER_SQ317_LEAVEME_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HOMER_SQ317_LEAVEME_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ317)) == (LOG_FAILED)) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((SQ317_FAILEDDINKIELDIALOGUE) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_SQ317_LEAVEME_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_LeaveMe_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOMER_SQ317_WAITATBEACH(C_INFO) {
    NPC = 0xe5e0;
    NR = 1;
    CONDITION = DIA_HOMER_SQ317_WAITATBEACH_CONDITION;
    INFORMATION = DIA_HOMER_SQ317_WAITATBEACH_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HOMER_SQ317_WAITATBEACH_CONDITION() {
    if (((KAPITEL) == (3)) && ((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS))) {
        return FALSE;
    };
    if ((LOG_GETSTATUS(MIS_SQ317)) == (LOG_RUNNING)) {
        if (((SQ317_FOLLOWSAFTEY) == (2)) || ((SQ317_FOLLOWSAFTEY) == (3))) {
            if ((SQ317_HOMERESCAPED) == (FALSE)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_SQ317_WAITATBEACH_INFO() {
    if ((SQ317_FOLLOWSAFTEY) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_WaitAtBeach_03_01");
    };
    if ((SQ317_FOLLOWSAFTEY) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_WaitAtBeach_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_WaitAtBeach_03_03");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf3f7);
}

instance DIA_HOMER_SQ317_LETSREPAIR(C_INFO) {
    NPC = 0xe5e0;
    NR = 1;
    CONDITION = DIA_HOMER_SQ317_LETSREPAIR_CONDITION;
    INFORMATION = DIA_HOMER_SQ317_LETSREPAIR_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOMER_SQ317_LETSREPAIR_CONDITION() {
    if (((KAPITEL) == (3)) && ((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS))) {
        return FALSE;
    };
    if ((((LOG_GETSTATUS(MIS_SQ317)) == (LOG_RUNNING)) && ((SQ317_FOLLOWSAFTEY) == (1))) && ((NPC_GETDISTTOWP(SELF, "PART17_SQ317_NEARCORTEZWALL")) <= (1000))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_SQ317_LETSREPAIR_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_LetsRepair_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ317, LOG_SQ317_HOMER_REPAIRWALL);
    NPC_EXCHANGEROUTINE(SELF, "SQ317_REPAIRWALL");
}

instance DIA_HOMER_SQ317_PLAN(C_INFO) {
    NPC = 0xe5e0;
    NR = 1;
    CONDITION = DIA_HOMER_SQ317_PLAN_CONDITION;
    INFORMATION = DIA_HOMER_SQ317_PLAN_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOMER_SQ317_PLAN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ317)) == (LOG_RUNNING)) && ((SQ317_FINISHEDWORKING) == (TRUE))) {
        if ((((LOG_GETSTATUS(MIS_Q306)) != (LOG_SUCCESS)) && ((KAPITEL) == (3))) || (((KAPITEL) >= (4)) && ((NPC_GETDISTTOWP(OTHER, "TELEPORT_SWAMPV2")) <= (0x5dc)))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_SQ317_PLAN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Plan_03_01");
    INFO_CLEARCHOICES(0x1440e);
    if ((TELEPORT_CITYINNOS) == (TRUE)) {
        INFO_ADDCHOICE(0x1440e, "(Give the teleportation rune to the shrine of Innos in the city)", 0x14412);
    };
    if ((TELEPORT_CITYADANOS) == (TRUE)) {
        INFO_ADDCHOICE(0x1440e, "(Give the teleportation rune to the shrine of Adanos in the city)", 0x14413);
    };
    if ((TELEPORT_CITYHOME) == (TRUE)) {
        INFO_ADDCHOICE(0x1440e, "(Give the teleportation rune to your home)", 0x14414);
    };
}

func void DIA_HOMER_SQ317_PLAN_NEXT() {
    SQ317_CHECKRUNES();
    AI_OUTPUT(OTHER, SELF, "DIA_Homer_SQ317_Plan_Next_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Homer_SQ317_Plan_Next_15_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Plan_Next_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Homer_SQ317_Plan_Next_15_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Plan_Next_03_05");
    INFO_CLEARCHOICES(0x1440e);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf3fb);
}

func void DIA_HOMER_SQ317_PLAN_CITYINNOS() {
    SQ317_WHATRUNE = 1;
    CREATEINVITEMS(OTHER, 0x919e, 1);
    NPC_REMOVEINVITEMS(SELF, 0x919e, 1);
    TELEPORT_CITYINNOS = FALSE;
    B_GIVEINVITEMS(OTHER, SELF, 0x919e, 1);
    DIA_HOMER_SQ317_PLAN_NEXT();
}

func void DIA_HOMER_SQ317_PLAN_CITYADANOS() {
    SQ317_WHATRUNE = 2;
    CREATEINVITEMS(OTHER, 0x919f, 1);
    NPC_REMOVEINVITEMS(SELF, 0x919f, 1);
    TELEPORT_CITYADANOS = FALSE;
    B_GIVEINVITEMS(OTHER, SELF, 0x919f, 1);
    DIA_HOMER_SQ317_PLAN_NEXT();
}

func void DIA_HOMER_SQ317_PLAN_CITYHOME() {
    SQ317_WHATRUNE = 3;
    CREATEINVITEMS(OTHER, 0x91a0, 1);
    NPC_REMOVEINVITEMS(SELF, 0x91a0, 1);
    TELEPORT_CITYHOME = FALSE;
    B_GIVEINVITEMS(OTHER, SELF, 0x91a0, 1);
    DIA_HOMER_SQ317_PLAN_NEXT();
}

instance DIA_HOMER_SQ317_PRISON(C_INFO) {
    NPC = 0xe5e0;
    NR = 1;
    CONDITION = DIA_HOMER_SQ317_PRISON_CONDITION;
    INFORMATION = DIA_HOMER_SQ317_PRISON_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOMER_SQ317_PRISON_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ317)) == (LOG_RUNNING)) && ((SQ317_HOMERESCAPED) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_SQ317_PRISON_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Prison_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Homer_SQ317_Prison_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Prison_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Prison_03_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_Prison_03_05");
    AI_LOGENTRY(TOPIC_SQ317, LOG_SQ317_FINISH_V2);
    SQ317_FINISHQUEST();
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOMER_SQ317_FOLLOWAGAIN(C_INFO) {
    NPC = 0xe5e0;
    NR = 1;
    CONDITION = DIA_HOMER_SQ317_FOLLOWAGAIN_CONDITION;
    INFORMATION = DIA_HOMER_SQ317_FOLLOWAGAIN_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOMER_SQ317_FOLLOWAGAIN_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ317)) == (LOG_RUNNING)) && ((SQ317_TRYHELP) == (2))) && ((KAPITEL) >= (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_SQ317_FOLLOWAGAIN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_FollowAgain_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf3f7);
}

instance DIA_HOMER_SQ317_CANTTALK(C_INFO) {
    NPC = 0xe5e0;
    NR = 1;
    CONDITION = DIA_HOMER_SQ317_CANTTALK_CONDITION;
    INFORMATION = DIA_HOMER_SQ317_CANTTALK_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HOMER_SQ317_CANTTALK_CONDITION() {
    if (((((KAPITEL) == (3)) && ((LOG_GETSTATUS(MIS_Q306)) == (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_SQ317)) != (LOG_SUCCESS))) && (NPC_ISINSTATE(SELF, 0xf09f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_SQ317_CANTTALK_INFO() {
    if (((LOG_GETSTATUS(MIS_SQ317)) == (LOG_RUNNING)) && ((SQ317_TRYHELP) == (2))) {
        if ((SQ317_HOMERCANTTALK_LOGENTRY) == (FALSE)) {
            SQ317_HOMERCANTTALK_LOGENTRY = TRUE;
            AI_LOGENTRY(TOPIC_SQ317, LOG_SQ317_HOMER_CANTHELP);
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Homer_SQ317_CantTalk_03_01");
    AI_STOPPROCESSINFOS(SELF);
}

var int DIA_HOMER_SQ317_CANTTALK_INFO.SQ317_HOMERCANTTALK_LOGENTRY = 0;
instance DIA_HOMER_AMBIENT(C_INFO) {
    NPC = 0xe5e0;
    NR = 998;
    CONDITION = DIA_HOMER_AMBIENT_CONDITION;
    INFORMATION = DIA_HOMER_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Are you all right?";
}

func int DIA_HOMER_AMBIENT_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x143f8)) || (NPC_KNOWSINFO(OTHER, 0x143fc))) || (NPC_KNOWSINFO(OTHER, 0x143ff))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_AreYouOkey");
    if (NPC_KNOWSINFO(OTHER, 0x14415)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Homer_Ambient_03_01");
    };
    if ((NPC_KNOWSINFO(OTHER, 0x14402)) && (!(NPC_KNOWSINFO(OTHER, 0x14415)))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Homer_Ambient_03_02");
    };
    if (!(NPC_KNOWSINFO(OTHER, 0x14402))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Homer_Ambient_03_03");
    };
}

instance DIA_HOMER_PICKPOCKET(C_INFO) {
    NPC = 0xe5e0;
    NR = 900;
    CONDITION = DIA_HOMER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_HOMER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_HOMER_PICKPOCKET_CONDITION() {
    if ((((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) && ((SQ317_HOMERESCAPED) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOMER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14422);
    INFO_ADDCHOICE(0x14422, DIALOG_BACK, 0x14426);
    INFO_ADDCHOICE(0x14422, DIALOG_PICKPOCKET, 0x14425);
}

func void DIA_HOMER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14422);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14422);
}

func void DIA_HOMER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14422);
}

