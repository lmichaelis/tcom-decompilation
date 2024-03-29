var int SIMON_Q304_NEEDMOREPPL;
instance DIA_SIMON_EXIT(C_INFO) {
    NPC = 58703;
    NR = 999;
    CONDITION = DIA_SIMON_EXIT_CONDITION;
    INFORMATION = DIA_SIMON_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SIMON_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SIMON_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SIMON_STAN_RODRIGOINTERRUPT(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_STAN_RODRIGOINTERRUPT_CONDITION;
    INFORMATION = DIA_SIMON_STAN_RODRIGOINTERRUPT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SIMON_STAN_RODRIGOINTERRUPT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING)) && ((Q303_RODRIGOSTANGAMBINGCHOICE) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_STAN_RODRIGOINTERRUPT_INFO() {
    NPC_EXCHANGEROUTINE(SELF, "Q303_SMALLTALK");
    AI_DRAWWEAPON(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Stan_RodrigoInterrupt_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Stan_RodrigoInterrupt_13_02");
    if ((Q303_RODRIGOSTANGAMBINGCHOICE) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_Stan_RodrigoInterrupt_13_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_Stan_RodrigoInterrupt_13_04");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Stan_RodrigoInterrupt_13_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Stan_RodrigoInterrupt_13_06");
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_SIMONANGRY);
    B_STARTOTHERROUTINE(NONE_1316_TARA, "DIALOGE");
    TELEPORTNPCTOWP(58528, NONE_1316_TARA.WP);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SIMON_STAN_SECRETINFO(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_STAN_SECRETINFO_CONDITION;
    INFORMATION = DIA_SIMON_STAN_SECRETINFO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SIMON_STAN_SECRETINFO_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 82867)) && ((NPC_GETDISTTOWP(SELF, "P17_HAVEN_BAR_IN_24")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_STAN_SECRETINFO_INFO() {
    Q303_TALKWITHSIMON = 2;
    MOB_CHANGEFOCUSNAME("Q303_RODRIGOCHEST", "MOBNAME_RODRIGOCHEST");
    NPC_EXCHANGEROUTINE(SELF, "SECRETMEET");
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SecretInfo_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_03_03");
    INFO_CLEARCHOICES(84125);
    INFO_ADDCHOICE(84125, "What happened between Stan and Rodrigo?", 84128);
    INFO_ADDCHOICE(84125, "So Cortez didn't pay for this?", 84132);
}

func void DIA_SIMON_STAN_SECRETINFO_WHATHAPPENED() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SecretInfo_WhatHappened_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_WhatHappened_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_WhatHappened_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_WhatHappened_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_WhatHappened_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_WhatHappened_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_WhatHappened_03_06");
    INFO_ADDCHOICE(84125, "He reportedly threatened Stan with death.", 84129);
    INFO_ADDCHOICE(84125, "Why was Rodrigo so upset?", 84130);
}

func void DIA_SIMON_STAN_SECRETINFO_WHATHAPPENED_1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_WhatHappened_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_WhatHappened_03_01");
}

func void DIA_SIMON_STAN_SECRETINFO_WHATHAPPENED_2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_WhatHappened_2_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_WhatHappened_2_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_WhatHappened_2_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_WhatHappened_2_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_WhatHappened_2_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_WhatHappened_2_03_05");
    INFO_ADDCHOICE(84125, "Why don't you want Rodrigo to know about the meeting?", 84131);
}

func void DIA_SIMON_STAN_SECRETINFO_WHATHAPPENED_3() {
    AI_LOGENTRY(TOPIC_Q303, LOG_Q303_SIMONNEWLEAD);
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SecretInfo_WhatHappened_3_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_WhatHappened_3_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_WhatHappened_3_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_WhatHappened_3_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SecretInfo_WhatHappened_3_15_04");
    INFO_CLEARCHOICES(84125);
    B_STARTOTHERROUTINE(NONE_1316_TARA, START);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_SIMON_STAN_SECRETINFO_CORTEZ() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SecretInfo_Cortez_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_Cortez_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SecretInfo_Cortez_03_02");
}

instance DIA_SIMON_HOUSE(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_HOUSE_CONDITION;
    INFORMATION = DIA_SIMON_HOUSE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who owns this house?";
}

func int DIA_SIMON_HOUSE_CONDITION() {
    if ((NPC_GETDISTTOWP(SELF, "P17_HAVEN_UP_08")) <= (300)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_HOUSE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_House_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_House_13_01");
}

instance DIA_SIMON_WHOAREYOU(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_WHOAREYOU_CONDITION;
    INFORMATION = DIA_SIMON_WHOAREYOU_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_SIMON_WHOAREYOU_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 84133)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_WHOAREYOU_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Whoareyou_15_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Whoareyou_13_11");
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Whoareyou_15_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Whoareyou_13_13");
}

instance DIA_SIMON_Q305_CORTEZ(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_Q305_CORTEZ_CONDITION;
    INFORMATION = DIA_SIMON_Q305_CORTEZ_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Cortez must be informed of everything.";
}

func int DIA_SIMON_Q305_CORTEZ_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 85173))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_Q305_CORTEZ_END() {
    AI_LOGENTRY(TOPIC_Q305, LOG_Q305_SIMON_PLAN);
    INFO_CLEARCHOICES(84139);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

func void DIA_SIMON_Q305_CORTEZ_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_Cortez_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_Cortez_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_Cortez_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_Cortez_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_Cortez_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_Cortez_03_06");
    INFO_CLEARCHOICES(84139);
    INFO_ADDCHOICE(84139, "I know.", 84143);
    INFO_ADDCHOICE(84139, "I don't know.", 84144);
}

func void DIA_SIMON_Q305_CORTEZ_YES() {
    Q305_SIMONKNOWABOUTORCS = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_Cortez_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_Cortez_Yes_03_02");
    DIA_SIMON_Q305_CORTEZ_END();
}

func void DIA_SIMON_Q305_CORTEZ_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_Cortez_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_Cortez_No_03_02");
    DIA_SIMON_Q305_CORTEZ_END();
}

instance DIA_SIMON_Q305_GOLDCHEST(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_Q305_GOLDCHEST_CONDITION;
    INFORMATION = DIA_SIMON_Q305_GOLDCHEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I found something.";
}

func int DIA_SIMON_Q305_GOLDCHEST_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 83226)) && ((Q305_BERTELWAY) == (2))) && ((LOG_GETSTATUS(MIS_Q305)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_Q305_GOLDCHEST_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_GoldChest_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_GoldChest_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_GoldChest_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_GoldChest_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_GoldChest_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_GoldChest_03_06");
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "GUIDE");
    AI_LOGENTRY(TOPIC_Q305, LOG_Q305_SIMON_CHEST);
}

instance DIA_SIMON_Q305_WHEREGOLDCHEST(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_Q305_WHEREGOLDCHEST_CONDITION;
    INFORMATION = DIA_SIMON_Q305_WHEREGOLDCHEST_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SIMON_Q305_WHEREGOLDCHEST_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 84145)) && ((NPC_GETDISTTOWP(SELF, "PART17_PATH_42")) <= (500))) && ((LOG_GETSTATUS(MIS_Q305)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_Q305_WHEREGOLDCHEST_END() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_WhereGoldChest_Go_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_WhereGoldChest_Whistle_03_03");
    INFO_CLEARCHOICES(84148);
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "GUIDE2");
    AI_RESETFACEANI(SELF);
}

func void DIA_SIMON_Q305_WHEREGOLDCHEST_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_WhereGoldChest_03_01");
    INFO_CLEARCHOICES(84148);
    INFO_ADDCHOICE(84148, "(Whistle)", 84152);
    INFO_ADDCHOICE(84148, "The crate is not far away.", 84153);
}

func void DIA_SIMON_Q305_WHEREGOLDCHEST_WHISTLE() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_PLAYANI(OTHER, "T_WHISTLE");
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, R_SCRATCHHEAD);
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_WhereGoldChest_Whistle_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_WhereGoldChest_Whistle_15_02");
    Q305_BERTELWAY = 3;
    Q305_BERTELGOTOCITY();
    DIA_SIMON_Q305_WHEREGOLDCHEST_END();
}

func void DIA_SIMON_Q305_WHEREGOLDCHEST_GO() {
    Q305_BERTELBETRAY();
    Q305_BERTELWAY = 4;
    DIA_SIMON_Q305_WHEREGOLDCHEST_END();
}

instance DIA_SIMON_Q305_BERTELRESULT(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_Q305_BERTELRESULT_CONDITION;
    INFORMATION = DIA_SIMON_Q305_BERTELRESULT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SIMON_Q305_BERTELRESULT_CONDITION() {
    if (((NPC_GETDISTTOWP(SELF, "PART17_PATH_76")) <= (500)) && ((LOG_GETSTATUS(MIS_Q305)) == (LOG_RUNNING))) {
        if ((Q305_BERTELWAY) == (3)) {
            return TRUE;
        };
        if ((Q305_BERTELWAY) == (4)) {
            if (NPC_ISDEAD(NONE_6332_BERTEL)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_Q305_BERTELRESULT_END() {
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_BertelResult_03_07");
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "CHESTPUSH");
}

func void DIA_SIMON_Q305_BERTELRESULT_INFO() {
    SELF.AIVAR[15] = FALSE;
    if ((Q305_BERTELWAY) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_BertelResult_03_01");
        AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_BertelResult_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_BertelResult_03_03");
        AI_LOGENTRY(TOPIC_Q305, LOG_Q305_SIMON_BERTELRESULT_V1);
        Q305_BERTELWAY = 7;
        DIA_SIMON_Q305_BERTELRESULT_END();
    };
    if ((Q305_BERTELWAY) == (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_BertelResult_03_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q305_BertelResult_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q305_BertelResult_03_06");
        AI_LOGENTRY(TOPIC_Q305, LOG_Q305_SIMON_BERTELRESULT_V2);
        Q305_BERTELWAY = 8;
        DIA_SIMON_Q305_BERTELRESULT_END();
    };
    Q305_ENOUGHSTUFF_COUNT = (Q305_ENOUGHSTUFF_COUNT) + (1);
    PRINTD(CS2("Zdobyte przedmioty: ", INTTOSTRING(Q305_ENOUGHSTUFF_COUNT)));
}

instance DIA_SIMON_Q304(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_Q304_CONDITION;
    INFORMATION = DIA_SIMON_Q304_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Come on, Cortez gave us an assignment.";
}

func int DIA_SIMON_Q304_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q304)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 83786))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_Q304_LETSGO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q304_7_03_05");
    AI_LOGENTRY(TOPIC_Q304, LOG_Q304_SIMONGOTORITA);
    INFO_CLEARCHOICES(84158);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SWAMPCAVETRAP");
    B_STARTOTHERROUTINE(PIR_1306_RODRIGO, "SWAMPCAVETRAP");
    if ((SIMON_Q304_NEEDMOREPPL) >= (1)) {
        if (!(NPC_ISDEAD(PIR_1311_THIAGO))) {
            B_STARTOTHERROUTINE(PIR_1311_THIAGO, "SWAMPCAVETRAP");
        };
        if ((SIMON_Q304_NEEDMOREPPL) == (2)) {
            if (!(NPC_ISDEAD(PIR_6322_GHOST))) {
                B_STARTOTHERROUTINE(PIR_6322_GHOST, "SWAMPCAVETRAP");
            };
        };
    };
}

func void DIA_SIMON_Q304_MOREPPL() {
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q304_7_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q304_7_03_04");
    DIA_SIMON_Q304_LETSGO();
}

func void DIA_SIMON_Q304_INFO() {
    var int RANDOMSIMON;
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q304_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q304_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q304_15_03");
    if ((Q304_CAVEFIGHTAFTERPAYING) == (TRUE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Simon_HelpKillBantids_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_HelpKillBantids_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_HelpKillBantids_03_03");
        AI_LOGENTRY(TOPIC_Q304, LOG_Q304_SIMONWAITNEARCAVE);
        AI_STOPPROCESSINFOS(SELF);
        RANDOMSIMON = HLP_RANDOM(2);
        if ((RANDOMSIMON) == (0)) {
            NPC_EXCHANGEROUTINE(SELF, "BANDITSWAIT_A");
            B_STARTOTHERROUTINE(PIR_1306_RODRIGO, "BANDITSWAIT_A");
        } else if ((RANDOMSIMON) == (1)) {
            NPC_EXCHANGEROUTINE(SELF, "BANDITSWAIT_B");
            B_STARTOTHERROUTINE(PIR_1306_RODRIGO, "BANDITSWAIT_B");
        };
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q304_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q304_03_05");
    INFO_CLEARCHOICES(84158);
    INFO_ADDCHOICE(84158, "About 3.", 84164);
    INFO_ADDCHOICE(84158, "About 5.", 84165);
    INFO_ADDCHOICE(84158, "About 7.", 84166);
}

func void DIA_SIMON_Q304_3() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q304_3_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q304_3_03_02");
    DIA_SIMON_Q304_LETSGO();
}

func void DIA_SIMON_Q304_5() {
    SIMON_Q304_NEEDMOREPPL = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q304_5_15_01");
    DIA_SIMON_Q304_MOREPPL();
}

func void DIA_SIMON_Q304_7() {
    SIMON_Q304_NEEDMOREPPL = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Q304_7_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q304_7_03_02");
    DIA_SIMON_Q304_MOREPPL();
}

instance DIA_SIMON_BCLETSGO(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_BCLETSGO_CONDITION;
    INFORMATION = DIA_SIMON_BCLETSGO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Let's go.";
}

func int DIA_SIMON_BCLETSGO_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q304)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 84158))) && ((Q304_CAVEFIGHTAFTERPAYING) == (TRUE))) {
        if (((NPC_GETDISTTOWP(SELF, "PART17_HELPBANDITS_A")) <= (500)) || ((NPC_GETDISTTOWP(SELF, "PART17_HELPBANDITS_B")) <= (500))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void SIMON_GOTOSWAMPCAVE() {
    PIR_1308_SIMON.AIVAR[15] = TRUE;
    PIR_1306_RODRIGO.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(PIR_1308_SIMON, "SWAMPCAVE");
    B_STARTOTHERROUTINE(PIR_1306_RODRIGO, "SWAMPCAVE");
}

func void DIA_SIMON_BCLETSGO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_BCLetsGo_15_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 84169);
}

instance DIA_SIMON_BCWHATAJOKE(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_BCWHATAJOKE_CONDITION;
    INFORMATION = DIA_SIMON_BCWHATAJOKE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SIMON_BCWHATAJOKE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q304)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 84167))) && ((NPC_GETDISTTOWP(SELF, "PART17_PATH_231")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_BCWHATAJOKE_INFO() {
    Q304_ESCAPEBANDITS_KILLEDBANDITS = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_BCWhatAJoke_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_BCWhatAJoke_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_BCWhatAJoke_03_03");
    AI_STOPPROCESSINFOS(SELF);
    PIR_1308_SIMON.AIVAR[15] = FALSE;
    PIR_1306_RODRIGO.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(PIR_1308_SIMON, START);
    B_STARTOTHERROUTINE(PIR_1306_RODRIGO, START);
}

instance DIA_SIMON_BCREADY(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_BCREADY_CONDITION;
    INFORMATION = DIA_SIMON_BCREADY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Everything ready?";
}

func int DIA_SIMON_BCREADY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q304)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 86241))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_BCREADY_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_BCReady_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_BCReady_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_BCReady_03_03");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_BCReady_15_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_BCReady_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_BCReady_03_06");
    INFO_CLEARCHOICES(84174);
    INFO_ADDCHOICE(84174, "Do you have any ideas on where to start?", 84177);
}

func void DIA_SIMON_BCREADY_START() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_BCReady_Start_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_BCReady_Start_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_BCReady_Start_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_BCReady_Start_03_04");
    INFO_CLEARCHOICES(84174);
    INFO_ADDCHOICE(84174, "I'll take a look around...", 84178);
}

func void DIA_SIMON_BCREADY_START_BYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_BCReady_Bye_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_BCReady_Bye_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(84174);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q304, LOG_Q304_PIRATESDRUNK);
}

instance DIA_SIMON_AMBIENT(C_INFO) {
    NPC = 58703;
    NR = 997;
    CONDITION = DIA_SIMON_AMBIENT_CONDITION;
    INFORMATION = DIA_SIMON_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_SIMON_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 84136)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_Ambient_15_00");
    NPC_INITAMBIENTS(SELF, 1);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_Ambient_13_01");
    };
}

instance DIA_SIMON_WHATHAPPED(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_WHATHAPPED_CONDITION;
    INFORMATION = DIA_SIMON_WHATHAPPED_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What happened here?";
}

func int DIA_SIMON_WHATHAPPED_CONDITION() {
    if (((KAPITEL) >= (5)) && ((Q307_POISONWAY) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_WHATHAPPED_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_WhatHapped_15_01");
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_WhatHapped_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_WhatHapped_03_03");
}

instance DIA_SIMON_SQ503_RESULT(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_SQ503_RESULT_CONDITION;
    INFORMATION = DIA_SIMON_SQ503_RESULT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_SIMON_SQ503_RESULT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ503)) == (LOG_RUNNING)) && ((SQ503_CORTEZFIGHT) == (3))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int SIMON_SQ503_GOODPOINTS;
func void DIA_SIMON_SQ503_RESULT_INFO() {
    WLD_SENDTRIGGER("ARENA_MOVER_ALPHA");
    AI_TURNTONPC(SELF, OTHER);
    AI_TURNTONPC(OTHER, SELF);
    INFO_CLEARCHOICES(84185);
    INFO_ADDCHOICE(84185, "I came here to make you all an offer of surrender.", 84191);
    INFO_ADDCHOICE(84185, "This is what awaits you if you don't give up!", 84190);
}

func void DIA_SIMON_SQ503_RESULT_NEXT() {
    AI_FUNCTION(SELF, 63890);
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Next_03_02");
    AI_LOGENTRY(TOPIC_SQ503, LOG_SQ503_CORTEZ_DEAD);
    INFO_CLEARCHOICES(84185);
    INFO_ADDCHOICE(84185, "Do you want to die for this place?", 84198);
}

func void DIA_SIMON_SQ503_RESULT_FUTURE() {
    SIMON_SQ503_GOODPOINTS = (SIMON_SQ503_GOODPOINTS) + (2);
    PRINTD(CS2("Punkty przekonania: ", INTTOSTRING(SIMON_SQ503_GOODPOINTS)));
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SQ503_Result_Future_15_01");
    DIA_SIMON_SQ503_RESULT_NEXT();
}

func void DIA_SIMON_SQ503_RESULT_CAPITULATION() {
    SIMON_SQ503_GOODPOINTS = (SIMON_SQ503_GOODPOINTS) + (1);
    PRINTD(CS2("Punkty przekonania: ", INTTOSTRING(SIMON_SQ503_GOODPOINTS)));
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SQ503_Result_Capitulation_15_01");
    DIA_SIMON_SQ503_RESULT_NEXT();
}

var int SIMON_SQ503_RESULT_POISON;
var int SIMON_SQ503_RESULT_TRUST;
var int SIMON_SQ503_RESULT_LEADER;
var int SIMON_SQ503_RESULT_ORCS;
var int SIMON_SQ503_RESULT_FINISH;
func void DIA_SIMON_SQ503_RESULT_CHOICES() {
    INFO_CLEARCHOICES(84185);
    INFO_ADDCHOICE(84185, "(Wait for a response)", 84204);
    if ((SIMON_SQ503_RESULT_ORCS) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_KQ407)) >= (1)) {
            INFO_ADDCHOICE(84185, "More troops of orcs appear on the island.", 84203);
        };
    };
    if ((SIMON_SQ503_RESULT_LEADER) == (FALSE)) {
        if ((Q306_TOURNAMENTSTATUS) == (1)) {
            INFO_ADDCHOICE(84185, "I am the champion of this arena and I killed Cortez. I'm in charge now.", 84202);
        };
    };
    if ((SIMON_SQ503_RESULT_TRUST) == (FALSE)) {
        INFO_ADDCHOICE(84185, "You know me and you know I can be trusted!", 84200);
    };
    if ((SIMON_SQ503_RESULT_POISON) == (FALSE)) {
        if ((Q307_POISONWAY) == (1)) {
            INFO_ADDCHOICE(84185, "Look at you, what state are you in? There's only a handful of you left!", 84199);
        };
    };
}

func void DIA_SIMON_SQ503_RESULT_CAPITULATION_NEXT_DIE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SQ503_Result_Die_15_01");
    DIA_SIMON_SQ503_RESULT_CHOICES();
}

func void DIA_SIMON_SQ503_RESULT_CAPITULATION_NEXT_DIE_POISON() {
    SIMON_SQ503_RESULT_POISON = TRUE;
    SIMON_SQ503_GOODPOINTS = (SIMON_SQ503_GOODPOINTS) + (3);
    PRINTD(CS2("Punkty przekonania: ", INTTOSTRING(SIMON_SQ503_GOODPOINTS)));
    AI_FUNCTION(SELF, 63891);
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SQ503_Result_Poison_15_01");
    AI_FUNCTION(SELF, 63886);
    AI_WAITTILLEND(SELF, OTHER);
    AI_FUNCTION(SELF, 63892);
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Poison_03_02");
    DIA_SIMON_SQ503_RESULT_CHOICES();
}

func void DIA_SIMON_SQ503_RESULT_CAPITULATION_NEXT_DIE_TRUST() {
    var int SIMON_SQ503_WHOWEHELPED_POINTS;
    SIMON_SQ503_RESULT_TRUST = TRUE;
    AI_FUNCTION(SELF, 63893);
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SQ503_Result_Trust_15_01");
    if ((LOG_GETSTATUS(MIS_SQ304)) == (LOG_SUCCESS)) {
        SIMON_SQ503_WHOWEHELPED_POINTS = (SIMON_SQ503_WHOWEHELPED_POINTS) + (1);
        AI_WAITTILLEND(PIR_1324_MORITZ, SELF);
        AI_WAITTILLEND(PIR_1324_MORITZ, OTHER);
        AI_STARTFACEANI(PIR_1324_MORITZ, S_SMILE, 1, -(1));
        AI_PLAYANI(PIR_1324_MORITZ, T_YES);
        AI_WAITTILLEND(SELF, OTHER);
        AI_FUNCTION(SELF, 63894);
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Trust_03_02");
    };
    if (((LOG_GETSTATUS(MIS_Q302)) == (LOG_SUCCESS)) && ((B_COUNTDUELSQ302()) >= (3))) {
        SIMON_SQ503_WHOWEHELPED_POINTS = (SIMON_SQ503_WHOWEHELPED_POINTS) + (2);
        if ((NPC_ISDEAD(PIR_1304_IVAN)) == (FALSE)) {
            AI_WAITTILLEND(PIR_1304_IVAN, SELF);
            AI_WAITTILLEND(PIR_1304_IVAN, OTHER);
            AI_STARTFACEANI(PIR_1304_IVAN, S_SMILE, 1, -(1));
            AI_WAIT(PIR_1304_IVAN, 1045220557);
            AI_PLAYANI(PIR_1304_IVAN, T_YES);
        };
        if ((NPC_ISDEAD(PIR_1304_IVAN)) == (FALSE)) {
            AI_WAITTILLEND(PIR_1300_LEONARDO, SELF);
            AI_WAITTILLEND(PIR_1300_LEONARDO, OTHER);
            AI_STARTFACEANI(PIR_1300_LEONARDO, S_SMILE, 1, -(1));
            AI_WAIT(PIR_1300_LEONARDO, 1056964608);
            AI_PLAYANI(PIR_1300_LEONARDO, "T_GREETCOOL");
        };
        AI_FUNCTION(SELF, 63895);
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Trust_03_03");
    };
    if (((Q305_JAVAD_WENTTONEWHOME) == (1)) && ((Q509_JAVADVOLFZACKE) != (1))) {
        SIMON_SQ503_WHOWEHELPED_POINTS = (SIMON_SQ503_WHOWEHELPED_POINTS) + (1);
        AI_WAITTILLEND(NONE_6331_JAVAD, SELF);
        AI_WAITTILLEND(NONE_6331_JAVAD, OTHER);
        AI_STARTFACEANI(NONE_6331_JAVAD, S_SMUG, 1, -(1));
        AI_WAIT(NONE_6331_JAVAD, 1045220557);
        AI_PLAYANI(NONE_6331_JAVAD, "T_GREETRIGHT");
        AI_FUNCTION(SELF, 63896);
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Trust_03_04");
    };
    if ((((LOG_GETSTATUS(MIS_Q303)) == (LOG_SUCCESS)) && ((Q303_STAN_BLAMEFOX) == (FALSE))) && ((NPC_KNOWSINFO(HERO, 84791)) == (FALSE))) {
        SIMON_SQ503_WHOWEHELPED_POINTS = (SIMON_SQ503_WHOWEHELPED_POINTS) + (1);
        AI_WAITTILLEND(PIR_1325_FOX, SELF);
        AI_WAITTILLEND(PIR_1325_FOX, OTHER);
        AI_STARTFACEANI(PIR_1325_FOX, S_SMUG, 1, -(1));
        AI_PLAYANI(PIR_1325_FOX, "T_COMEOVERHERE");
        AI_FUNCTION(SELF, 63897);
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Trust_03_05");
    };
    if (((LOG_GETSTATUS(MIS_Q304)) == (LOG_SUCCESS)) && ((Q304_SMUGGLERISDEAD) == (TRUE))) {
        SIMON_SQ503_WHOWEHELPED_POINTS = (SIMON_SQ503_WHOWEHELPED_POINTS) + (1);
        AI_WAITTILLEND(PIR_1306_RODRIGO, SELF);
        AI_WAITTILLEND(PIR_1306_RODRIGO, OTHER);
        AI_STARTFACEANI(PIR_1306_RODRIGO, S_SMUG, 1, -(1));
        AI_WAIT(PIR_1306_RODRIGO, 1050253722);
        AI_PLAYANI(PIR_1306_RODRIGO, T_YES);
        AI_FUNCTION(SELF, 63898);
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Trust_03_06");
    };
    AI_FUNCTION(SELF, 63899);
    if ((SIMON_SQ503_WHOWEHELPED_POINTS) >= (3)) {
        SIMON_SQ503_GOODPOINTS = (SIMON_SQ503_GOODPOINTS) + (2);
        PRINTD(CS2("Punkty przekonania: ", INTTOSTRING(SIMON_SQ503_GOODPOINTS)));
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Trust_03_07");
    };
    PRINTD(CS2("Punkty przekonania: ", INTTOSTRING(SIMON_SQ503_GOODPOINTS)));
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Trust_03_08");
    DIA_SIMON_SQ503_RESULT_CHOICES();
}

func void DIA_SIMON_SQ503_RESULT_CAPITULATION_NEXT_DIE_LEADER() {
    SIMON_SQ503_RESULT_LEADER = TRUE;
    SIMON_SQ503_GOODPOINTS = (SIMON_SQ503_GOODPOINTS) + (3);
    PRINTD(CS2("Punkty przekonania: ", INTTOSTRING(SIMON_SQ503_GOODPOINTS)));
    AI_FUNCTION(SELF, 63900);
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SQ503_Result_Leader_15_01");
    AI_FUNCTION(SELF, 63886);
    AI_WAITTILLEND(SELF, OTHER);
    AI_FUNCTION(SELF, 63901);
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Leader_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Leader_03_03");
    DIA_SIMON_SQ503_RESULT_CHOICES();
}

func void DIA_SIMON_SQ503_RESULT_CAPITULATION_NEXT_DIE_ORCS() {
    SIMON_SQ503_RESULT_ORCS = TRUE;
    SIMON_SQ503_GOODPOINTS = (SIMON_SQ503_GOODPOINTS) + (3);
    PRINTD(CS2("Punkty przekonania: ", INTTOSTRING(SIMON_SQ503_GOODPOINTS)));
    AI_FUNCTION(SELF, 63902);
    AI_OUTPUT(OTHER, SELF, "DIA_Simon_SQ503_Result_Orcs_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_FUNCTION(SELF, 63903);
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Orcs_03_02");
    DIA_SIMON_SQ503_RESULT_CHOICES();
}

func void DIA_SIMON_SQ503_RESULT_CAPITULATION_NEXT_DIE_FINISH() {
    AI_FUNCTION(SELF, 63904);
    if ((SIMON_SQ503_GOODPOINTS) >= (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Finish_03_04");
        AI_FUNCTION(SELF, 63905);
        AI_OUTPUT(OTHER, SELF, "DIA_Simon_SQ503_Result_Finish_15_05");
        AI_OUTPUT(OTHER, SELF, "DIA_Simon_SQ503_Result_Finish_15_06");
        AI_OUTPUT(OTHER, SELF, "DIA_Simon_SQ503_Result_Finish_15_07");
        AI_WAITTILLEND(SELF, OTHER);
        AI_FUNCTION(SELF, 63906);
        if ((SIMON_SQ503_GOODPOINTS) >= (9)) {
            SQ503_HAVENDECISION = 1;
            AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Finish_03_08");
            AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Finish_03_09");
            AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Finish_03_10");
            B_GIVEPLAYERXP(XP_SQ503_HAVENSURRENDER);
        } else {
            SQ503_HAVENDECISION = 2;
            AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Finish_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Finish_03_03");
        };
    };
    SQ503_HAVENDECISION = 2;
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_SQ503_Result_Finish_03_01");
    INFO_CLEARCHOICES(84185);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 63907);
}

instance DIA_SIMON_Q306_AFTERTOURNAMENT(C_INFO) {
    NPC = 58703;
    NR = 1;
    CONDITION = DIA_SIMON_Q306_AFTERTOURNAMENT_CONDITION;
    INFORMATION = DIA_SIMON_Q306_AFTERTOURNAMENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_SIMON_Q306_AFTERTOURNAMENT_CONDITION() {
    if (((NPC_ISINSTATE(SELF, 61599)) && ((Q301_AFTERQ306) == (TRUE))) && ((KAPITEL) < (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_Q306_AFTERTOURNAMENT_INFO() {
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Simon_Q306_AfterTournament_03_01");
    AI_WAITTILLEND(OTHER, SELF);
    CREATEINVITEMS(SELF, 33984, 2);
    B_GIVEINVITEMS(SELF, OTHER, 33984, 1);
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    AI_USEITEM(SELF, 33984);
    AI_WAIT(OTHER, 1045220557);
    AI_USEITEM(OTHER, 33984);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SIMON_PICKPOCKET(C_INFO) {
    NPC = 58703;
    NR = 900;
    CONDITION = DIA_SIMON_PICKPOCKET_CONDITION;
    INFORMATION = DIA_SIMON_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_SIMON_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_SIMON_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(84208);
    INFO_ADDCHOICE(84208, DIALOG_BACK, 84212);
    INFO_ADDCHOICE(84208, DIALOG_PICKPOCKET, 84211);
}

func void DIA_SIMON_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(84208);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(84208);
}

func void DIA_SIMON_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(84208);
}

instance DIA_SIMON_SELLHEAD(C_INFO) {
    NPC = 58703;
    NR = 770;
    CONDITION = DIA_SIMON_SELLHEAD_CONDITION;
    INFORMATION = DIA_SIMON_SELLHEAD_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I have everything you need. (Sell the head of a mantis)";
}

var int SIMONNEEDHEAD_ENOUGH;
var int SIMONNEEDHEAD_COUNT;
func int DIA_SIMON_SELLHEAD_CONDITION() {
    if (((SIMONWANTSHEADS) == (TRUE)) && ((SIMONNEEDHEAD_ENOUGH) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int SIMON_HEADINSTANCE;
var int SIMON_HEADVALUE;
func void DIA_SIMON_SELLHEAD_CHOICES() {
    var string ALL_STRING;
    var int MAX;
    SIMON_HEADINSTANCE = 33842;
    SIMON_HEADVALUE = VALUE_BCKOPF;
    INFO_CLEARCHOICES(84213);
    MAX = NPC_HASITEMS(HERO, SIMON_HEADINSTANCE);
    ALL_STRING = CS4(DIALOG_ALL, " (", I2S(MAX), ")");
    INFO_ADDCHOICE(84213, ALL_STRING, 84224);
    INFO_ADDCHOICE(84213, CHOICE_NUMBER_5, 84226);
    INFO_ADDCHOICE(84213, CHOICE_NUMBER_1, 84228);
    INFO_ADDCHOICE(84213, DIALOG_BACK, 84223);
}

func void DIA_SIMON_SELLHEAD_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_GiveItem3");
    DIA_SIMON_SELLHEAD_CHOICES();
}

func void DIA_SIMON_SELLHEAD_BACK() {
    SIMON_HEADINSTANCE = -(1);
    SIMON_HEADVALUE = 0;
    INFO_CLEARCHOICES(84213);
}

func void DIA_SIMON_SELLHEAD_ALL() {
    var int MAX;
    if ((NPC_HASITEMS(OTHER, SIMON_HEADINSTANCE)) >= (1)) {
        MAX = NPC_HASITEMS(HERO, SIMON_HEADINSTANCE);
        NPC_REMOVEINVITEMS(SELF, SIMON_HEADINSTANCE, MAX);
        CREATEINVITEMS(SELF, 34203, (MAX) * (SIMON_HEADVALUE));
        B_GIVEINVITEMS(SELF, OTHER, 34203, (MAX) * (SIMON_HEADVALUE));
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, SIMON_HEADINSTANCE, MAX);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        if ((SIMON_HEADINSTANCE) == (33842)) {
            SIMONNEEDHEAD_COUNT = (SIMONNEEDHEAD_COUNT) + (MAX);
            if ((SIMONNEEDHEAD_COUNT) >= (25)) {
                SIMONNEEDHEAD_ENOUGH = TRUE;
                if ((SIMONNEEDHEAD_COUNT) > (25)) {
                    AI_FUNCTION(SELF, 84229);
                };
            };
        };
        if (((SIMON_HEADINSTANCE) == (33842)) && ((SIMONNEEDHEAD_ENOUGH) == (FALSE))) {
            DIA_SIMON_SELLHEAD_CHOICES();
        } else {
            DIA_SIMON_SELLHEAD_BACK();
        };
    };
    DIA_SIMON_SELLHEAD_BACK();
    B_SAY(SELF, OTHER, "$NOITEMS");
}

func void DIA_SIMON_SELLHEAD_5() {
    var int MAX;
    if ((NPC_HASITEMS(OTHER, SIMON_HEADINSTANCE)) >= (5)) {
        NPC_REMOVEINVITEMS(SELF, SIMON_HEADINSTANCE, 5);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, SIMON_HEADINSTANCE, 5);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, (5) * (SIMON_HEADVALUE));
        if ((SIMON_HEADINSTANCE) == (33842)) {
            SIMONNEEDHEAD_COUNT = (SIMONNEEDHEAD_COUNT) + (5);
            if ((SIMONNEEDHEAD_COUNT) >= (25)) {
                SIMONNEEDHEAD_ENOUGH = TRUE;
                if ((SIMONNEEDHEAD_COUNT) > (25)) {
                    AI_FUNCTION(SELF, 84229);
                };
            };
        };
        if (((SIMON_HEADINSTANCE) == (33842)) && ((SIMONNEEDHEAD_ENOUGH) == (FALSE))) {
            DIA_SIMON_SELLHEAD_CHOICES();
        } else {
            DIA_SIMON_SELLHEAD_BACK();
        };
    };
    if (((NPC_HASITEMS(OTHER, SIMON_HEADINSTANCE)) >= (1)) && ((NPC_HASITEMS(OTHER, SIMON_HEADINSTANCE)) < (5))) {
        MAX = NPC_HASITEMS(HERO, SIMON_HEADINSTANCE);
        NPC_REMOVEINVITEMS(SELF, SIMON_HEADINSTANCE, MAX);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, SIMON_HEADINSTANCE, MAX);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, (MAX) * (SIMON_HEADVALUE));
        if ((SIMON_HEADINSTANCE) == (33842)) {
            SIMONNEEDHEAD_COUNT = (SIMONNEEDHEAD_COUNT) + (MAX);
            if ((SIMONNEEDHEAD_COUNT) >= (25)) {
                SIMONNEEDHEAD_ENOUGH = TRUE;
                if ((SIMONNEEDHEAD_COUNT) > (25)) {
                    AI_FUNCTION(SELF, 84229);
                };
            };
        };
        if (((SIMON_HEADINSTANCE) == (33842)) && ((SIMONNEEDHEAD_ENOUGH) == (FALSE))) {
            DIA_SIMON_SELLHEAD_CHOICES();
        } else {
            DIA_SIMON_SELLHEAD_BACK();
        };
    };
    if ((NPC_HASITEMS(OTHER, SIMON_HEADINSTANCE)) == (0)) {
        DIA_SIMON_SELLHEAD_BACK();
        B_SAY(SELF, OTHER, "$NOITEMS");
    };
}

func void DIA_SIMON_SELLHEAD_1() {
    if ((NPC_HASITEMS(OTHER, SIMON_HEADINSTANCE)) >= (1)) {
        NPC_REMOVEINVITEMS(SELF, SIMON_HEADINSTANCE, 1);
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, SIMON_HEADINSTANCE, 1);
        B_SAY(SELF, OTHER, "$REWARD_CALM");
        AI_RESETFACEANI(SELF);
        CREATEINVITEMS(SELF, 34203, SIMON_HEADVALUE);
        if ((SIMON_HEADINSTANCE) == (33842)) {
            SIMONNEEDHEAD_COUNT = (SIMONNEEDHEAD_COUNT) + (1);
            if ((SIMONNEEDHEAD_COUNT) >= (25)) {
                SIMONNEEDHEAD_ENOUGH = TRUE;
                if ((SIMONNEEDHEAD_COUNT) > (25)) {
                    AI_FUNCTION(SELF, 84229);
                };
            };
        };
        if (((SIMON_HEADINSTANCE) == (33842)) && ((SIMONNEEDHEAD_ENOUGH) == (FALSE))) {
            DIA_SIMON_SELLHEAD_CHOICES();
        } else {
            DIA_SIMON_SELLHEAD_BACK();
        };
    };
    if ((NPC_HASITEMS(OTHER, SIMON_HEADINSTANCE)) == (0)) {
        DIA_SIMON_SELLHEAD_BACK();
        B_SAY(SELF, OTHER, "$NOITEMS");
    };
}

func void SIMON_GIVEBACKSTUFF_HEAD() {
    CREATEINVITEMS(PIR_1308_SIMON, 33842, (SIMONNEEDHEAD_COUNT) - (25));
    NPC_REMOVEINVITEMS(PIR_1308_SIMON, 34203, (VALUE_BCKOPF) * ((SIMONNEEDHEAD_COUNT) - (25)));
    PRINTSCREENS(PRINT_SIMONHEAD, -(1), -(1), FONT_SCREENSMALL, 4);
    B_GIVEINVITEMS(HERO, PIR_1308_SIMON, 34203, (VALUE_BCKOPF) * ((SIMONNEEDHEAD_COUNT) - (25)));
}

