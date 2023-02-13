var int PROPAGANDIST02_MAD;
instance DIA_PROPAGANDIST02_EXIT(C_INFO) {
    NPC = 53266;
    NR = 999;
    CONDITION = DIA_PROPAGANDIST02_EXIT_CONDITION;
    INFORMATION = DIA_PROPAGANDIST02_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_PROPAGANDIST02_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_PROPAGANDIST02_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_PROPAGANDIST02_HELLO(C_INFO) {
    NPC = 53266;
    NR = 1;
    CONDITION = DIA_PROPAGANDIST02_HELLO_CONDITION;
    INFORMATION = DIA_PROPAGANDIST02_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_PROPAGANDIST02_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) && ((Q311_PROPAGANDIST02FLEE) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PROPAGANDIST02_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_03_01");
    INFO_CLEARCHOICES(76539);
    INFO_ADDCHOICE(76539, "Why not.", 76542);
    INFO_ADDCHOICE(76539, "What's in it?", 76543);
    INFO_ADDCHOICE(76539, "Where did you get those flyers?", 76544);
}

func void DIA_PROPAGANDIST02_HELLO_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Yes_03_02");
    CREATEINVITEMS(SELF, 37294, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37294, 1);
    INFO_ADDCHOICE(76539, "(Chat)", 76545);
}

func void DIA_PROPAGANDIST02_HELLO_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_What_03_03");
}

func void DIA_PROPAGANDIST02_HELLO_FROM() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_From_15_01");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_From_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_From_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_From_03_04");
    INFO_CLEARCHOICES(76539);
    AI_STOPPROCESSINFOS(SELF);
    if (NPC_KNOWSINFO(OTHER, 76567)) {
        AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST02_MAD_V1);
    };
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST02_MAD_V2);
    PROPAGANDIST02_MAD = TRUE;
}

func void DIA_PROPAGANDIST02_HELLO_YES_TALK() {
    B_USEFAKESCROLL_MARVIN();
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_Talk_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Talk_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Talk_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_Talk_15_04");
    AI_PLAYANI(SELF, T_SEARCH);
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Talk_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_Talk_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Talk_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Talk_03_08");
    INFO_CLEARCHOICES(76539);
    INFO_ADDCHOICE(76539, "The governor has a problem.", 76546);
    INFO_ADDCHOICE(76539, "Who told you that?", 76547);
}

func void DIA_PROPAGANDIST02_HELLO_YES_TALK_PROBLEM() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_Problem_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Problem_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_Problem_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Problem_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_Problem_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Problem_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Problem_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Problem_03_08");
    INFO_CLEARCHOICES(76539);
    INFO_ADDCHOICE(76539, "What can we, the common people, do about it?", 76548);
}

func void DIA_PROPAGANDIST02_HELLO_YES_TALK_WHO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_Who_15_01");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Who_03_02");
    };
    AI_PLAYANI(SELF, R_SCRATCHHEAD);
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Who_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_Who_03_04");
    if (NPC_KNOWSINFO(OTHER, 76567)) {
        AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST02_MAD_V3);
    };
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST02_MAD_V4);
    INFO_CLEARCHOICES(76539);
    PROPAGANDIST02_MAD = TRUE;
}

func void DIA_PROPAGANDIST02_HELLO_YES_TALK_PROBLEM_WHATCAN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_WhatCan_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_WhatCan_03_02");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_WhatCan_03_03");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_WhatCan_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_WhatCan_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_WhatCan_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_HELLO_WhatCan_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_HELLO_WhatCan_15_08");
    INFO_CLEARCHOICES(76539);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST02_INFO_V1);
    Q311_SPAWNLUDLOF();
}

instance DIA_PROPAGANDIST02_GOTYOU(C_INFO) {
    NPC = 53266;
    NR = 1;
    CONDITION = DIA_PROPAGANDIST02_GOTYOU_CONDITION;
    INFORMATION = DIA_PROPAGANDIST02_GOTYOU_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

var int PROPAGANDIST02_GOTYOU;
func int DIA_PROPAGANDIST02_GOTYOU_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) && ((Q311_PROPAGANDIST02FLEE) > (0))) && ((PROPAGANDIST02_GOTYOU) == (0))) && (NPC_ISINSTATE(SELF, 61599))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PROPAGANDIST02_GOTYOU_INFO() {
    PROPAGANDIST02_GOTYOU = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_GotYou_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_GotYou_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_GotYou_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_GotYou_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_GotYou_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_GotYou_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_GotYou_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_GotYou_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_GotYou_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_GotYou_03_10");
    INFO_CLEARCHOICES(76549);
    INFO_ADDCHOICE(76549, "Get out of here.", 76553);
    INFO_ADDCHOICE(76549, "I despise worms like you.", 76554);
    Q311_SPAWNLUDLOF();
}

func void DIA_PROPAGANDIST02_GOTYOU_GOAWAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_GotYou_GoAway_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_GotYou_GoAway_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_GotYou_GoAway_15_03");
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST02_GOTYOU_V1);
    INFO_CLEARCHOICES(76549);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_PROPAGANDIST02_GOTYOU_FIGHT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_GotYou_Fight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_GotYou_Fight_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_GotYou_Fight_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_GotYou_Fight_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_GotYou_Fight_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_GotYou_Fight_03_06");
    INFO_CLEARCHOICES(76549);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST02_GOTYOU_V2);
}

instance DIA_PROPAGANDIST02_SCARE(C_INFO) {
    NPC = 53266;
    NR = 1;
    CONDITION = DIA_PROPAGANDIST02_SCARE_CONDITION;
    INFORMATION = DIA_PROPAGANDIST02_SCARE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Talk, where did you get those brochures?";
}

func int DIA_PROPAGANDIST02_SCARE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) && ((PROPAGANDIST02_MAD) == (TRUE))) && ((Q311_PROPAGANDIST02FLEE) == (0))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PROPAGANDIST02_SCARE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_Scare_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_Scare_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist02_Scare_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_Scare_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist02_Scare_03_05");
    AI_PLAYANI(SELF, "T_WHISTLE");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 76558);
}

func void PROPAGANDIST_RUNAWAY() {
    Q311_PROPAGANDISTRUNAWAY_V2();
}
