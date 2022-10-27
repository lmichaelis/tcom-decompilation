var int LOWELL_PAYGOLD = 0;
var int LOWELL_CLEARSWAMP = 0;
instance DIA_LOWELL_EXIT(C_INFO) {
    NPC = 0xdfba;
    NR = 999;
    CONDITION = DIA_LOWELL_EXIT_CONDITION;
    INFORMATION = DIA_LOWELL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_LOWELL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_LOWELL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LOWELL_SNAPPERS(C_INFO) {
    NPC = 0xdfba;
    NR = 1;
    CONDITION = DIA_LOWELL_SNAPPERS_CONDITION;
    INFORMATION = DIA_LOWELL_SNAPPERS_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_LOWELL_SNAPPERS_CONDITION() {
    if ((Q401_ESTICUTTERS) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOWELL_SNAPPERS_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Snappers_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Lowell_Snappers_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Snappers_03_03");
    if ((Q401_FABIOANDGANGGONE) == (0)) {
        if ((MARVINJOINEDWOODCUTTERS) == (TRUE)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Snappers_03_04");
            AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Snappers_03_05");
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Snappers_03_06");
        };
    };
}

var int Q401_LOWELL_AMBIENT = 0;
instance DIA_LOWELL_WORK(C_INFO) {
    NPC = 0xdfba;
    NR = 1;
    CONDITION = DIA_LOWELL_WORK_CONDITION;
    INFORMATION = DIA_LOWELL_WORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Would you like to make some extra money?";
}

func int DIA_LOWELL_WORK_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14db7)) && ((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING))) {
        if ((Q401_FABIOANDGANGGONE) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOWELL_SWAMP_DEAD() {
    Q401_LOWELL_AMBIENT = TRUE;
    Q401_ESTICUTTERS = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Lowell_SwampDead_15_01");
    if ((LOWELL_CLEARSWAMP) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lowell_SwampDead_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_SwampDead_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_SwampDead_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_SwampDead_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Lowell_SwampDead_15_06");
    if ((LOG_GETSTATUS(MIS_SQ204)) == (LOG_SUCCESS)) {
        AI_LOGENTRY(TOPIC_Q401, LOG_Q401_LOWELLGOTOWORK_V1);
    };
    AI_LOGENTRY(TOPIC_Q401, LOG_Q401_LOWELLGOTOWORK_V2);
    B_GIVEPLAYERXP(XP_Q401_LOWELLWENTTOWORK);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SWAMP");
}

func void DIA_LOWELL_SWAMP() {
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Swamp_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Swamp_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lowell_Swamp_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Swamp_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Swamp_03_05");
    if ((Q401_SWAMPMONSTERS) == (FALSE)) {
        LOWELL_CLEARSWAMP = TRUE;
        AI_OUTPUT(OTHER, SELF, "DIA_Lowell_Swamp_15_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Swamp_03_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Swamp_03_08");
        AI_OUTPUT(OTHER, SELF, "DIA_Lowell_Swamp_15_09");
        AI_LOGENTRY(TOPIC_Q401, LOG_Q401_LOWELLSWAMP);
        INFO_CLEARCHOICES(0x14dbb);
        INFO_CLEARCHOICES(0x14dc2);
        AI_STOPPROCESSINFOS(SELF);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Lowell_Swamp_15_10");
    DIA_LOWELL_SWAMP_DEAD();
}

func void DIA_LOWELL_WORK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lowell_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Work_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Lowell_Work_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Work_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Lowell_Work_15_05");
    if (((LOG_GETSTATUS(MIS_SQ204)) == (LOG_SUCCESS)) && ((Q401_SWAMPMONSTERS) == (TRUE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Work_03_06");
        AI_OUTPUT(OTHER, SELF, "DIA_Lowell_Work_15_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Work_03_08");
        DIA_LOWELL_SWAMP();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Work_03_16");
    INFO_CLEARCHOICES(0x14dbb);
    INFO_ADDCHOICE(0x14dbb, "In that case, here. (250 GP)", 0x14dc0);
    INFO_ADDCHOICE(0x14dbb, "I'll come back later.", 0x14dc1);
}

func void DIA_LOWELL_WORK_GOLD() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q401_CUTTERSPRICE)) {
        NPC_REMOVEINVITEMS(SELF, 0x859b, Q401_CUTTERSPRICE);
        AI_OUTPUT(OTHER, SELF, "DIA_Lowell_Work_Gold_15_01");
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, Q401_CUTTERSPRICE);
        DIA_LOWELL_SWAMP();
    };
    LOWELL_PAYGOLD = TRUE;
    B_SAY(SELF, OTHER, "$NOGOLD");
}

func void DIA_LOWELL_WORK_LATER() {
    LOWELL_PAYGOLD = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Lowell_Work_Later_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Work_Later_03_02");
    AI_LOGENTRY(TOPIC_Q401, LOG_Q401_LOWELLPAYGOLD);
    INFO_CLEARCHOICES(0x14dbb);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_LOWELL_YOURGOLD(C_INFO) {
    NPC = 0xdfba;
    NR = 1;
    CONDITION = DIA_LOWELL_YOURGOLD_CONDITION;
    INFORMATION = DIA_LOWELL_YOURGOLD_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Here, your gold. (250 GP)";
}

func int DIA_LOWELL_YOURGOLD_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x14dbb)) && ((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING))) && ((LOWELL_PAYGOLD) == (TRUE))) {
        if ((Q401_FABIOANDGANGGONE) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOWELL_YOURGOLD_INFO() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q401_CUTTERSPRICE)) {
        LOWELL_PAYGOLD = FALSE;
        NPC_REMOVEINVITEMS(SELF, 0x859b, Q401_CUTTERSPRICE);
        AI_OUTPUT(OTHER, SELF, "DIA_Lowell_YourGold_15_01");
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, Q401_CUTTERSPRICE);
        AI_LOGENTRY(TOPIC_Q401, LOG_Q401_GOLDPAID);
        DIA_LOWELL_SWAMP();
    };
    LOWELL_PAYGOLD = TRUE;
    B_SAY(SELF, OTHER, "$NOGOLD");
}

instance DIA_LOWELL_WORKDONE(C_INFO) {
    NPC = 0xdfba;
    NR = 1;
    CONDITION = DIA_LOWELL_WORKDONE_CONDITION;
    INFORMATION = DIA_LOWELL_WORKDONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I found the hut you were talking about.";
}

func int DIA_LOWELL_WORKDONE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING)) && ((LOWELL_CLEARSWAMP) == (TRUE))) && ((Q401_SWAMPMONSTERS) == (TRUE))) {
        if ((Q401_FABIOANDGANGGONE) == (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOWELL_WORKDONE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Lowell_WorkDone_15_01");
    DIA_LOWELL_SWAMP_DEAD();
}

instance DIA_LOWELL_Q504_FEEL(C_INFO) {
    NPC = 0xdfba;
    NR = 90;
    CONDITION = DIA_LOWELL_Q504_FEEL_CONDITION;
    INFORMATION = DIA_LOWELL_Q504_FEEL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_LOWELL_Q504_FEEL_CONDITION() {
    if ((((Q504_TAKEWORKERS) == (2)) && ((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_SAW")) <= (0x7d0))) && ((Q504_LOWELLVOLFZACKE) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOWELL_Q504_FEEL_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Q504_Feel_03_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_LOWELL_HELLO(C_INFO) {
    NPC = 0xdfba;
    NR = 1;
    CONDITION = DIA_LOWELL_HELLO_CONDITION;
    INFORMATION = DIA_LOWELL_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you tell me what you do here?";
}

func int DIA_LOWELL_HELLO_CONDITION() {
    if (!(NPC_KNOWSINFO(OTHER, 0x14db7))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOWELL_HELLO_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_AbouYou");
    AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Hello_03_01");
}

instance DIA_LOWELL_AMBIENT(C_INFO) {
    NPC = 0xdfba;
    NR = 990;
    CONDITION = DIA_LOWELL_AMBIENT_CONDITION;
    INFORMATION = DIA_LOWELL_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "What's new?";
}

func int DIA_LOWELL_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x14dcb)) || (NPC_KNOWSINFO(OTHER, 0x14db7))) {
        if ((NPC_GETDISTTOWP(SELF, "PART5_WORKERSCAMP_SAW")) > (0x7d0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOWELL_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew");
    if ((!(NPC_KNOWSINFO(OTHER, 0x14db7))) && ((Q401_LOWELL_AMBIENT) == (FALSE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Ambient_03_01");
    };
    if ((NPC_KNOWSINFO(OTHER, 0x14db7)) && ((Q401_LOWELL_AMBIENT) == (FALSE))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Ambient_03_02");
    };
    if ((Q401_LOWELL_AMBIENT) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Lowell_Ambient_03_03");
    };
}

instance DIA_LOWELL_PICKPOCKET(C_INFO) {
    NPC = 0xdfba;
    NR = 900;
    CONDITION = DIA_LOWELL_PICKPOCKET_CONDITION;
    INFORMATION = DIA_LOWELL_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_LOWELL_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_LOWELL_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x14dd1);
    INFO_ADDCHOICE(0x14dd1, DIALOG_BACK, 0x14dd5);
    INFO_ADDCHOICE(0x14dd1, DIALOG_PICKPOCKET, 0x14dd4);
}

func void DIA_LOWELL_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x84d0, 3);
        B_GIVEINVITEMS(SELF, OTHER, 0x84d0, 3);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x14dd1);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x14dd1);
}

func void DIA_LOWELL_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x14dd1);
}

